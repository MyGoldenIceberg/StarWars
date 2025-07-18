using Microsoft.EntityFrameworkCore;
using star_wars.entity.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace star_wars.entity.EntityFramework.Interfaces
{
    public interface IService<TEntity, TContext> where TEntity : BaseEntity where TContext : DbContext
    {
        Task<TEntity?> GetByIdAsync(Guid id);
        Task<List<TEntity>> GetAllAsync();
        IQueryable<TEntity> GetAll();
        Task AddAsync(TEntity entity);
        void Add(TEntity entity);
        Task AddRangeAsync(IEnumerable<TEntity> entities);
        void Update(TEntity entity);
        void Delete(TEntity entity);
        void SoftDelete(TEntity entity);
        Task<int> SaveChangesAsync();
    }
}
