using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace star_wars.entity.DTOs
{
    public class StarshipSearchRequest
    {
        public string? Name { get; set; }
        public string? Model { get; set; }
        public string? Manufacturer { get; set; }
        public string? MaxAtmospheringSpeed { get; set; }
        public string? StarshipClass { get; set; }
        public string? CargoCapacity { get; set; }

        public int Page { get; set; } = 1;
        public int PageSize { get; set; } = 10;
    }

}
