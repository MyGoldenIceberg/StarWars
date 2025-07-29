using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using star_wars.entity.Context;
using star_wars.entity.DTOs;
using star_wars.entity.EntityFramework;
using star_wars.entity.EntityFramework.Interfaces;
using star_wars.entity.Helper;
using star_wars.entity.Models;
using star_wars.entity.Services.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace star_wars.entity.Services
{
    public class StarShipService : Service<Starship, StarWarsDbContext>, IStarShipService
    {
        private readonly ILogger<StarShipService> _logger;
        private readonly HttpClient _httpClient;
        public StarShipService(HttpClient httpClient, ILogger<StarShipService> logger, IUnitOfWork<StarWarsDbContext> unitOfWork) : base(unitOfWork)
        {
            _httpClient = httpClient;
            _logger = logger;
        }

        public async Task<ResultModel<PagedResult<StarshipQueryVM>>> GetAllAsync(StarshipSearchRequest request)
        {
            var resultModel = new ResultModel<PagedResult<StarshipQueryVM>>();

            try
            {
                var query = GetAll()
                .Where(s => !s.IsDeleted)
                .WhereIf(!string.IsNullOrWhiteSpace(request.Name),
                    s => s.Name.Contains(request.Name!.Trim()))
                .WhereIf(!string.IsNullOrWhiteSpace(request.Model),
                    s => s.Model.Contains(request.Model!.Trim()))
                .WhereIf(!string.IsNullOrWhiteSpace(request.Manufacturer),
                    s => s.Manufacturer.Contains(request.Manufacturer!.Trim()))
                .WhereIf(!string.IsNullOrWhiteSpace(request.MaxAtmospheringSpeed),
                    s => s.MaxAtmospheringSpeed.Contains(request.MaxAtmospheringSpeed!.Trim()))
                .WhereIf(!string.IsNullOrWhiteSpace(request.StarshipClass),
                    s => s.StarshipClass.Contains(request.StarshipClass!.Trim()))
                .WhereIf(!string.IsNullOrWhiteSpace(request.CargoCapacity),
                    s => s.CargoCapacity.Contains(request.CargoCapacity!.Trim()));

                if(!query.Any())
                    return resultModel;

                var totalCount = query.Count();


                var items = query
                    .AsEnumerable()
                    .Select(x => (StarshipQueryVM)x)
                    .Where(x => x.Crew >= 100)
                    .OrderByDescending(s => s.CreatedOn)
                    .Skip((request.Page - 1) * request.PageSize)
                    .Take(request.PageSize)
                    .ToList();

                if (totalCount == 0)
                    return resultModel;

                resultModel.Data = new PagedResult<StarshipQueryVM>
                {
                    Items = items,
                    TotalCount = totalCount,
                    Page = request.Page,
                    PageSize = request.PageSize
                };
            }
            catch (Exception ex)
            {
                resultModel.AddError(ex.Message);
                _logger.LogError(ex.Message);
                if (ex.InnerException != null)
                {
                    resultModel.AddError(ex.InnerException.Message);
                    _logger.LogError(ex.InnerException.Message);
                }
            }

            return resultModel;
        }


        public async Task<ResultModel<CreateStarshipDto>> CreateAsync(CreateStarshipDto dto)
        {
            var resultModel = new ResultModel<CreateStarshipDto>();

            try
            {
                var entity = new Starship
                {
                    Name = dto.Name,
                    Model = dto.Model,
                    Manufacturer = dto.Manufacturer,
                    CostInCredits = dto.CostInCredits,
                    Length = dto.Length,
                    MaxAtmospheringSpeed = dto.MaxAtmospheringSpeed,
                    Consumables = dto.Consumables,
                    StarshipClass = dto.StarshipClass,
                    HyperdriveRating = dto.HyperdriveRating,
                    Crew = dto.Crew,
                    Passengers = dto.Passengers,
                    MGLT = dto.MGLT,
                    CargoCapacity = dto.CargoCapacity
                };

                await AddAsync(entity);
                await _unitOfWork.SaveAsync();

                dto.Id = entity.Id;
                resultModel.Data = dto;
            }
            catch(Exception ex) 
            {
                resultModel.AddError(ex.Message);
                _logger.LogError(ex.Message);
                if (ex.InnerException != null)
                {
                    resultModel.AddError(ex.InnerException.Message);
                    _logger.LogError(ex.InnerException.Message);
                }
            }
                       
            return resultModel;
        }

        public async Task<ResultModel<string>> UpdateAsync(UpdateStarshipDto dto)
        {
            var resultModel = new ResultModel<string>();

            try
            {
                var existing = await GetByIdAsync(dto.Id);

                if (existing == null || existing.IsDeleted)
                {
                    resultModel.AddError($"{dto.Id} was deleted or does not exist.");
                    return resultModel;
                }

                dto.Name.UpdateIfPresent(v => existing.Name = v);
                dto.Model.UpdateIfPresent(v => existing.Model = v);
                dto.Manufacturer.UpdateIfPresent(v => existing.Manufacturer = v);
                dto.CostInCredits.UpdateIfPresent(v => existing.CostInCredits = v);
                dto.Length.UpdateIfPresent(v => existing.Length = v);
                dto.MaxAtmospheringSpeed.UpdateIfPresent(v => existing.MaxAtmospheringSpeed = v);
                dto.Consumables.UpdateIfPresent(v => existing.Consumables = v);
                dto.StarshipClass.UpdateIfPresent(v => existing.StarshipClass = v);
                dto.HyperdriveRating.UpdateIfPresent(v => existing.HyperdriveRating = v);
                dto.Crew.UpdateIfPresent(v => existing.Crew = v);
                dto.Passengers.UpdateIfPresent(v => existing.Passengers = v);
                dto.MGLT.UpdateIfPresent(v => existing.MGLT = v);
                dto.CargoCapacity.UpdateIfPresent(v => existing.CargoCapacity = v);

                existing.ModifiedOn = DateTime.UtcNow;

                await _unitOfWork.SaveAsync();
                resultModel.Data = "Updated Successfully";
            }
            catch (Exception ex)
            {
                resultModel.AddError(ex.Message);
                _logger.LogError(ex.Message);
                if (ex.InnerException != null)
                {
                    resultModel.AddError(ex.InnerException.Message);
                    _logger.LogError(ex.InnerException.Message);
                }
            }

            return resultModel;
        }


        public async Task<ResultModel<string>> SeedFromSwapiAsync()
        {
            var resultModel = new ResultModel<string>();

            try
            {
                const string swapiUrl = "https://swapi.info/api/starships";

                var response = await _httpClient.GetAsync(swapiUrl);
                if (!response.IsSuccessStatusCode)
                    throw new HttpRequestException("Failed to fetch starships.");

                var content = await response.Content.ReadAsStringAsync();
                var swapiShips = JsonSerializer.Deserialize<List<SwapiStarship>>(content, new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                });

                if (swapiShips == null || !swapiShips.Any())
                {
                    resultModel.Message = "SWAPI returned no results";
                    return resultModel;
                }

                var existing = GetAll()
                    .Select(s => new { s.Name, s.Model })
                    .ToHashSet();

                var newShips = swapiShips
                    .Where(s => !string.IsNullOrWhiteSpace(s.Name) && !string.IsNullOrWhiteSpace(s.Model))
                    .Where(s => !existing.Contains(new { s.Name, s.Model }))
                    .Select(s => new Starship
                    {
                        Name = s.Name.Trim(),
                        Model = s.Model.Trim(),
                        Manufacturer = s.Manufacturer.Trim(),
                        CostInCredits = s.CostInCredits.Trim(),
                        Length = s.Length.Trim(),
                        MaxAtmospheringSpeed = s.MaxAtmospheringSpeed.Trim(),
                        Crew = s.Crew.Trim(),
                        Pilots = s.Pilots,
                        Films = s.Films,
                        Passengers = s.Passengers.Trim(),
                        CargoCapacity = s.CargoCapacity.Trim(),
                        Consumables = s.Consumables.Trim(),
                        HyperdriveRating = s.HyperdriveRating.Trim(),
                        MGLT = s.MGLT.Trim(),
                        StarshipClass = s.StarshipClass.Trim()
                    })
                    .ToList();

                await AddRangeAsync(newShips);

                await _unitOfWork.SaveAsync();
            }
            catch(Exception ex)
            {
                resultModel.AddError(ex.Message);
                _logger.LogError(ex.Message);
                if (ex.InnerException != null)
                {
                    resultModel.AddError(ex.InnerException.Message);
                    _logger.LogError(ex.InnerException.Message);
                }
            }

            return resultModel;
        }

        public async Task<ResultModel<string>> DeleteAsync(Guid id)
        {
            var resultModel = new ResultModel<string>();

            try
            {
                var existing = await GetByIdAsync(id);

                if (existing == null || existing.IsDeleted)
                {
                    resultModel.AddError($"{id} was deleted or does not exist.");
                    return resultModel;
                }

                existing.IsDeleted = true;
                existing.ModifiedOn = DateTime.UtcNow;

                _repository.Update(existing);
                await _unitOfWork.SaveAsync();

                resultModel.Data = "Deleted Successfully";
            }
            catch (Exception ex)
            {
                resultModel.AddError(ex.Message);
                _logger.LogError(ex.Message);
                if (ex.InnerException != null)
                {
                    resultModel.AddError(ex.InnerException.Message);
                    _logger.LogError(ex.InnerException.Message);
                }
            }

            return resultModel;
        }

        public async Task<ResultModel<string>> HardDeleteAsync(Guid id)
        {
            var resultModel = new ResultModel<string>();

            try
            {
                var existing = await GetByIdAsync(id);

                if (existing == null)
                {
                    resultModel.AddError($"{id} does not exist.");
                    return resultModel;
                }

                _repository.Delete(existing);
                await _unitOfWork.SaveAsync();

                resultModel.Data = "Hard Deleted Successfully";
            }
            catch (Exception ex)
            {
                resultModel.AddError(ex.Message);
                _logger.LogError(ex.Message);
                if (ex.InnerException != null)
                {
                    resultModel.AddError(ex.InnerException.Message);
                    _logger.LogError(ex.InnerException.Message);
                }
            }

            return resultModel;
        }
    }
}
