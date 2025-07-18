using FluentAssertions;
using Microsoft.Extensions.Logging;
using Moq;
using Moq.Protected;
using star_wars.entity.Context;
using star_wars.entity.DTOs;
using star_wars.entity.EntityFramework.Interfaces;
using star_wars.entity.Models;
using star_wars.entity.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace starship.test
{
    public class StarShipServiceTests
    {
        private readonly Mock<IUnitOfWork<StarWarsDbContext>> _mockUnitOfWork;
        private readonly Mock<ILogger<StarShipService>> _mockLogger;
        private readonly StarShipService _service;
        private readonly List<Starship> _mockData;

        public StarShipServiceTests()
        {
            _mockUnitOfWork = new Mock<IUnitOfWork<StarWarsDbContext>>();
            _mockLogger = new Mock<ILogger<StarShipService>>();

            _mockData = new List<Starship>
            {
                new Starship { Id = Guid.NewGuid(), Name = "X-Wing", Model = "T-65", Manufacturer = "Incom Corporation", CreatedOn = DateTime.UtcNow },
                new Starship { Id = Guid.NewGuid(), Name = "TIE Fighter", Model = "Twin Ion Engine", Manufacturer = "Sienar Fleet Systems", CreatedOn = DateTime.UtcNow }
            };

            var starshipRepoMock = new Mock<IGenericRepository<Starship>>();
            starshipRepoMock.Setup(r => r.Query()).Returns(_mockData.AsQueryable());

            _mockUnitOfWork.Setup(u => u.Repository<Starship>()).Returns(starshipRepoMock.Object);
            var _httpHandlerMock = new Mock<HttpMessageHandler>();
            var httpClient = new HttpClient(_httpHandlerMock.Object)
            {
                BaseAddress = new Uri("https://swapi.dev") // Optional: match the real base URL
            };

            _service = new StarShipService(httpClient, _mockLogger.Object, _mockUnitOfWork.Object);
        }

        [Fact]
        public async Task GetAllAsync_ShouldReturnPagedResult()
        {
            var request = new StarshipSearchRequest { Page = 1, PageSize = 10 };

            var result = await _service.GetAllAsync(request);

            result.ErrorMessages.Should().BeEmpty();
            result.Data.Should().NotBeNull();
            result.Data.Items.Count.Should().Be(2);
        }

        [Fact]
        public async Task CreateAsync_ShouldAddNewStarship()
        {
            var dto = new CreateStarshipDto
            {
                Name = "Falcon",
                Model = "YT-1300",
                Manufacturer = "Corellian Engineering",
                MaxAtmospheringSpeed = "1050"
            };

            var repoMock = new Mock<IGenericRepository<Starship>>();
            repoMock.Setup(r => r.AddAsync(It.IsAny<Starship>())).Returns(Task.CompletedTask);

            _mockUnitOfWork.Setup(u => u.Repository<Starship>()).Returns(repoMock.Object);
            _mockUnitOfWork.Setup(u => u.SaveAsync()).ReturnsAsync(1);

            var result = await _service.CreateAsync(dto);

            result.ErrorMessages.Should().BeEmpty(); // Should succeed
            result.Data.Name.Should().Be("Falcon");
        }

        [Fact]
        public async Task UpdateAsync_ShouldReturnError_WhenNotFound()
        {
            var dto = new UpdateStarshipDto { Id = Guid.NewGuid(), Name = "New Name" };
            _mockUnitOfWork.Setup(u => u.Repository<Starship>().GetByIdAsync(dto.Id)).ReturnsAsync((Starship)null);

            var result = await _service.UpdateAsync(dto);

            result.ErrorMessages.Should().NotBeEmpty();
            result.ErrorMessages.Should().Contain($"{dto.Id} was deleted or does not exist.");
        }

        [Fact]
        public async Task UpdateAsync_ShouldUpdateEntity()
        {
            var existing = _mockData.First();
            var dto = new UpdateStarshipDto
            {
                Id = existing.Id,
                Name = "Updated X-Wing"
            };

            _mockUnitOfWork.Setup(u => u.Repository<Starship>().GetByIdAsync(existing.Id)).ReturnsAsync(existing);
            _mockUnitOfWork.Setup(u => u.SaveAsync()).ReturnsAsync(1);

            var result = await _service.UpdateAsync(dto);

            result.ErrorMessages.Should().BeEmpty();
            existing.Name.Should().Be("Updated X-Wing");
        }

        [Fact]
        public async Task SeedFromSwapiAsync_ShouldReturnMessage_WhenApiFails()
        {
            var handlerMock = new Mock<HttpMessageHandler>();
            handlerMock
                .Protected()
                .Setup<Task<HttpResponseMessage>>("SendAsync", ItExpr.IsAny<HttpRequestMessage>(),
                    ItExpr.IsAny<CancellationToken>())
                .ReturnsAsync(new HttpResponseMessage
                {
                    StatusCode = HttpStatusCode.InternalServerError,
                });

            var httpClient = new HttpClient(handlerMock.Object);
            var result = await _service.SeedFromSwapiAsync();

            result.ErrorMessages.Should().NotBeEmpty();
        }

        [Fact]
        public async Task DeleteAsync_ShouldReturnError_WhenNotFoundOrDeleted()
        {
            var id = Guid.NewGuid();
            _mockUnitOfWork.Setup(u => u.Repository<Starship>().GetByIdAsync(id)).ReturnsAsync((Starship)null);

            var result = await _service.DeleteAsync(id);

            result.ErrorMessages.Should().NotBeEmpty();
            result.ErrorMessages.Should().Contain($"{id} was deleted or does not exist.");
        }

        [Fact]
        public async Task DeleteAsync_ShouldSoftDeleteEntity()
        {
            var existing = _mockData.First();
            existing.IsDeleted = false;

            _mockUnitOfWork.Setup(u => u.Repository<Starship>().GetByIdAsync(existing.Id)).ReturnsAsync(existing);
            _mockUnitOfWork.Setup(u => u.SaveAsync()).ReturnsAsync(1);

            var repoMock = new Mock<IGenericRepository<Starship>>();
            repoMock.Setup(r => r.Update(existing));
            _mockUnitOfWork.Setup(u => u.Repository<Starship>()).Returns(repoMock.Object);

            var result = await _service.DeleteAsync(existing.Id);

            result.ErrorMessages.Should().BeEmpty();
            result.Data.Should().Be("Deleted Successfully");
            existing.IsDeleted.Should().BeTrue();
        }

        [Fact]
        public async Task HardDeleteAsync_ShouldReturnError_WhenNotFound()
        {
            var id = Guid.NewGuid();
            _mockUnitOfWork.Setup(u => u.Repository<Starship>().GetByIdAsync(id)).ReturnsAsync((Starship)null);

            var result = await _service.HardDeleteAsync(id);

            result.ErrorMessages.Should().NotBeEmpty();
            result.ErrorMessages.Should().Contain($"{id} does not exist.");
        }

        [Fact]
        public async Task HardDeleteAsync_ShouldRemoveEntity()
        {
            var existing = _mockData.First();

            _mockUnitOfWork.Setup(u => u.Repository<Starship>().GetByIdAsync(existing.Id)).ReturnsAsync(existing);
            _mockUnitOfWork.Setup(u => u.SaveAsync()).ReturnsAsync(1);

            var repoMock = new Mock<IGenericRepository<Starship>>();
            repoMock.Setup(r => r.Delete(existing));
            _mockUnitOfWork.Setup(u => u.Repository<Starship>()).Returns(repoMock.Object);

            var result = await _service.HardDeleteAsync(existing.Id);

            result.ErrorMessages.Should().BeEmpty();
            result.Data.Should().Be("Hard Deleted Successfully");
        }
    }

}
