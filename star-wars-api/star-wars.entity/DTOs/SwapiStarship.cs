using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace star_wars.entity.DTOs
{
    public class SwapiStarship
    {
        public string Name { get; set; }
        public string Model { get; set; }
        public string Manufacturer { get; set; }

        [JsonPropertyName("cost_in_credits")]
        public string CostInCredits { get; set; }

        public string Length { get; set; }

        [JsonPropertyName("max_atmosphering_speed")]
        public string MaxAtmospheringSpeed { get; set; }

        public string Crew { get; set; }
        public string Passengers { get; set; }

        [JsonPropertyName("cargo_capacity")]
        public string CargoCapacity { get; set; }

        public string Consumables { get; set; }

        [JsonPropertyName("hyperdrive_rating")]
        public string HyperdriveRating { get; set; }

        public string MGLT { get; set; }

        [JsonPropertyName("starship_class")]
        public string StarshipClass { get; set; }

        public string Url { get; set; }
        public DateTime Created { get; set; }
        public DateTime Edited { get; set; }

        public List<string> Pilots { get; set; } = new();
        public List<string> Films { get; set; } = new();
    }
}
