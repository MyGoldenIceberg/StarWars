using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using star_wars.entity.DTOs;
using star_wars.entity.Enums;
using star_wars.entity.Helper;
using star_wars.entity.Services.Interface;

namespace star_wars_api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StarShipController : BaseController
    {
        private readonly IStarShipService _starShipService;
        private readonly ILogger<StarShipController> _logger;
        public StarShipController(ILogger<StarShipController> logger, IStarShipService starShipService) : base(logger)
        {
            _starShipService = starShipService;
            _logger = logger;
        }

        [HttpGet("search")]
        public async Task<IActionResult> GetAll([FromQuery] StarshipSearchRequest request)
        {
            var result = await _starShipService.GetAllAsync(request);
            if (result.ErrorMessages.Any())
                return ApiResponse(result, codes: ApiResponseCodes.ERROR, errors: result.ErrorMessages.ToArray());

            return ApiResponse(result.Data, totalCount: result.Data != null ? result.TotalCount : 0, codes: ApiResponseCodes.OK);
        }

        [HttpPost]
        public async Task<IActionResult> Create([FromBody] CreateStarshipDto dto)
        {
            if (!ModelState.IsValid)
                return ApiResponse(ModelState, codes: ApiResponseCodes.ERROR);

            var result = await _starShipService.CreateAsync(dto);
            if (result.HasError)
                return ApiResponse(result, codes: ApiResponseCodes.ERROR, errors: result.ErrorMessages.ToArray());

            return ApiResponse(result, codes: ApiResponseCodes.OK);
        }

        [HttpPut("{id:guid}")]
        public async Task<IActionResult> Update(Guid id, [FromBody] UpdateStarshipDto dto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var result = await _starShipService.UpdateAsync(dto);
            if (result.ErrorMessages.Any())
                return ApiResponse(result, codes: ApiResponseCodes.ERROR, errors: result.ErrorMessages.ToArray());

            return Ok(result);
        }

        [HttpPost("seed")]
        public async Task<IActionResult> SeedFromSwapi()
        {
            try
            {
                var result = await _starShipService.SeedFromSwapiAsync();
                if (result.HasError)
                    return ApiResponse(result, codes: ApiResponseCodes.ERROR, errors: result.ErrorMessages.ToArray());
                return ApiResponse(result, codes: ApiResponseCodes.OK);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error seeding starships from SWAPI");
                return HandleError(ex, "An error occurred while seeding starships from SWAPI.");
            }
        }

        [HttpDelete("{id:guid}")]
        public async Task<IActionResult> Delete(Guid id)
        {
            var result = await _starShipService.DeleteAsync(id);
            if (result.ErrorMessages.Any())
                return ApiResponse(result, codes: ApiResponseCodes.ERROR, errors: result.ErrorMessages.ToArray());

            return ApiResponse(result, codes: ApiResponseCodes.OK);
        }

        [HttpDelete("hard/{id:guid}")]
        public async Task<IActionResult> HardDelete(Guid id)
        {
            var result = await _starShipService.HardDeleteAsync(id);
            if (result.ErrorMessages.Any())
                return ApiResponse(result, codes: ApiResponseCodes.ERROR, errors: result.ErrorMessages.ToArray());

            return ApiResponse(result, codes: ApiResponseCodes.OK);
        }
    }
}
