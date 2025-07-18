using Microsoft.EntityFrameworkCore;
using star_wars.entity.EntityFramework.Interfaces;
using star_wars.entity.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace star_wars.entity.EntityFramework
{
    public class Service<TEntity, TContext> : IService<TEntity, TContext> where TEntity : BaseEntity where TContext : DbContext
    {
        protected readonly IUnitOfWork<TContext> _unitOfWork;
        protected readonly IGenericRepository<TEntity> _repository;

        public Service(IUnitOfWork<TContext> unitOfWork)
        {
            _unitOfWork = unitOfWork ?? throw new ArgumentNullException(nameof(unitOfWork));
            _repository = _unitOfWork.Repository<TEntity>();
        }

        public async Task<TEntity?> GetByIdAsync(Guid id) => await _repository.GetByIdAsync(id);

        public async Task<List<TEntity>> GetAllAsync() => await _repository.Query().ToListAsync();

        public IQueryable<TEntity> GetAll() => _repository.Query();

        public async Task AddAsync(TEntity entity) => await _repository.AddAsync(entity);

        public void Add(TEntity entity) => _repository.Add(entity);

        public async Task AddRangeAsync(IEnumerable<TEntity> entities)
        {
            await _repository.AddRangeAsync(entities);
        }

        public void Update(TEntity entity) => _repository.Update(entity);

        public void Delete(TEntity entity) => _repository.Delete(entity);

        public void SoftDelete(TEntity entity) => _repository.SoftDelete(entity);

        public async Task<int> SaveChangesAsync() => await _unitOfWork.SaveAsync();
    }
}
