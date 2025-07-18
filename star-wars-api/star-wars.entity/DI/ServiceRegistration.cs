using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using star_wars.entity.EntityFramework;
using star_wars.entity.EntityFramework.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace star_wars.entity.DI
{
    public static class ServiceRegistration
    {
        public static IServiceCollection AddSharedInfrastructure<TContext>(this IServiceCollection services)
        where TContext : DbContext
        {
            services.AddScoped(typeof(IUnitOfWork<TContext>), typeof(UnitOfWork<TContext>));
            services.AddScoped(typeof(IGenericRepository<>), typeof(GenericRepository<>));
            services.AddScoped(typeof(IService<,>), typeof(Service<,>));
            return services;
        }
    }
}
