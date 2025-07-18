﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace star_wars.entity.DTOs
{
    public class UpdateStarshipDto
    {
        [Required]
        public Guid Id { get; set; }

        public string? Name { get; set; }
        public string? Model { get; set; }
        public string? Manufacturer { get; set; }
        public string? CostInCredits { get; set; }
        public string? Length { get; set; }
        public string? MaxAtmospheringSpeed { get; set; }
        public string? Consumables { get; set; }
        public string? StarshipClass { get; set; }
        public string? HyperdriveRating { get; set; }
        public string? Crew { get; set; }
        public string? Passengers { get; set; }
        public string? MGLT { get; set; }
        public string? CargoCapacity { get; set; }

        public List<string>? Pilots { get; set; }
        public List<string>? Films { get; set; }
    }

}
