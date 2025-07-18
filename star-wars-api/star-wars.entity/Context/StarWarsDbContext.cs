using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using star_wars.entity.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace star_wars.entity.Context
{
    public class StarWarsDbContext : ApplicationDbContext<ApplicationUser, IdentityRole<Guid>, Guid>
    {
        public StarWarsDbContext(DbContextOptions<StarWarsDbContext> options) : base(options)
        {
            
        }

        public DbSet<Starship> Starships { get; set; }

    }
}
