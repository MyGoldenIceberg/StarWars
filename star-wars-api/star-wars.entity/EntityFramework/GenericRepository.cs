using Microsoft.EntityFrameworkCore;
using star_wars.entity.Context;
using star_wars.entity.EntityFramework.Interfaces;
using star_wars.entity.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace star_wars.entity.EntityFramework
{
    public class GenericRepository<T> : IGenericRepository<T> where T : BaseEntity
    {
        protected readonly DbContext _context;
        private DbSet<T> _dbSet;

        protected virtual DbSet<T> Entities
        {
            get
            {
                if (_dbSet == null)
                {
                    _dbSet = _context.Set<T>();
                }
                return _dbSet;
            }
        }


        public GenericRepository(DbContext context)
        {
            _context = context ?? throw new ArgumentNullException(nameof(context));
            _dbSet = _context.Set<T>();
        }

        /// <summary>
        /// Gets entity by Id (primary key)
        /// </summary>
        public async Task<T?> GetByIdAsync(Guid id) =>
            await Entities.FindAsync(id);

        /// <summary>
        /// Returns IQueryable for EF operations
        /// </summary>
        public IQueryable<T> Query() => Entities;

        /// <summary>
        /// Adds an entity asynchronously
        /// </summary>
        public async Task AddAsync(T entity) =>
            await _dbSet.AddAsync(entity);

        /// <summary>
        /// Adds multiple entities asynchronously
        /// </summary>
        public async Task AddRangeAsync(IEnumerable<T> entities) =>
            await _dbSet.AddRangeAsync(entities);

        /// <summary>
        /// Adds an entity synchronously
        /// </summary>
        public void Add(T entity) => _dbSet.Add(entity);

        /// <summary>
        /// Updates an existing entity
        /// </summary>
        public void Update(T entity) => _dbSet.Update(entity);

        /// <summary>
        /// Deletes an entity (hard delete)
        /// </summary>
        public void Delete(T entity) => _dbSet.Remove(entity);

        /// <summary>
        /// Soft deletes an entity by flagging IsDeleted
        /// </summary>
        public void SoftDelete(T entity)
        {
            entity.IsDeleted = true;
            Update(entity);
        }
    }
}
