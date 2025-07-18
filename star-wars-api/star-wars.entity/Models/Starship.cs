using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace star_wars.entity.Models
{
    public class Starship : BaseEntity
    {
        public string Name { get; set; }
        public string Model { get; set; }
        public string Manufacturer { get; set; }
        public string CostInCredits { get; set; }
        public string Length { get; set; }
        public string MaxAtmospheringSpeed { get; set; }
        public string Consumables { get; set; }
        public string StarshipClass { get; set; }
        public string HyperdriveRating { get; set; }
        public string Crew { get; set; }
        public string Passengers { get; set; }
        public string MGLT { get; set; }
        public string CargoCapacity { get; set; }
        public string PilotsJson { get; set; }
        public string FilmsJson { get; set; }

        [NotMapped]
        public List<string> Pilots
        {
            get => string.IsNullOrWhiteSpace(PilotsJson)
                ? new List<string>()
                : JsonSerializer.Deserialize<List<string>>(PilotsJson);
            set => PilotsJson = JsonSerializer.Serialize(value ?? new List<string>());
        }

        [NotMapped]
        public List<string> Films
        {
            get => string.IsNullOrWhiteSpace(FilmsJson)
                ? new List<string>()
                : JsonSerializer.Deserialize<List<string>>(FilmsJson);
            set => FilmsJson = JsonSerializer.Serialize(value ?? new List<string>());
        }
    }
}
