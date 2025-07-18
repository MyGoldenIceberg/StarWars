using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace star_wars.entity.Migrations
{
    /// <inheritdoc />
    public partial class PilotFilmAddition : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "FilmsJson",
                table: "Starships",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "PilotsJson",
                table: "Starships",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "FilmsJson",
                table: "Starships");

            migrationBuilder.DropColumn(
                name: "PilotsJson",
                table: "Starships");
        }
    }
}
