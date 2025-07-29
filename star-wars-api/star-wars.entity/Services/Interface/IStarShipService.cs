using star_wars.entity.DTOs;
using star_wars.entity.Helper;
using star_wars.entity.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace star_wars.entity.Services.Interface
{
    public interface IStarShipService
    {
        Task<ResultModel<PagedResult<StarshipQueryVM>>> GetAllAsync(StarshipSearchRequest request);
        Task<ResultModel<CreateStarshipDto>> CreateAsync(CreateStarshipDto dto);
        Task<ResultModel<string>> UpdateAsync(UpdateStarshipDto dto);
        Task<ResultModel<string>> DeleteAsync(Guid id);
        Task<ResultModel<string>> HardDeleteAsync(Guid id);
        Task<ResultModel<string>> SeedFromSwapiAsync();
    }
}
