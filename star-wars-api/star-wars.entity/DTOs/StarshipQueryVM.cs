using star_wars.entity.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace star_wars.entity.DTOs
{
    public class StarshipQueryVM
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
        public int Crew { get; set; }
        public string Passengers { get; set; }
        public string MGLT { get; set; }
        public string CargoCapacity { get; set; }
        public string PilotsJson { get; set; }
        public string FilmsJson { get; set; }
        public DateTime CreatedOn { get; set; }


        public static implicit operator StarshipQueryVM(Starship starship)
        {
            if (starship == null) return null;
            return new StarshipQueryVM
            {
                Name = starship.Name,
                Model = starship.Model,
                Manufacturer = starship.Manufacturer,
                CostInCredits = starship.CostInCredits,
                Length = starship.Length,
                MaxAtmospheringSpeed = starship.MaxAtmospheringSpeed,
                Consumables = starship.Consumables,
                StarshipClass = starship.StarshipClass,
                HyperdriveRating = starship.HyperdriveRating,
                Crew = int.TryParse(starship.Crew, out var crew) ? crew : 0,
                Passengers = starship.Passengers,
                MGLT = starship.MGLT,
                CargoCapacity = starship.CargoCapacity,
                PilotsJson = starship.PilotsJson,
                FilmsJson = starship.FilmsJson,
                CreatedOn = starship.CreatedOn
            };
        }
    }
}
