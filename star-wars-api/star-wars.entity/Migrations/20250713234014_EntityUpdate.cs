using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace star_wars.entity.Migrations
{
    /// <inheritdoc />
    public partial class EntityUpdate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Consumables",
                table: "Starships",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "CostInCredits",
                table: "Starships",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Length",
                table: "Starships",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "MaxAtmospheringSpeed",
                table: "Starships",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Consumables",
                table: "Starships");

            migrationBuilder.DropColumn(
                name: "CostInCredits",
                table: "Starships");

            migrationBuilder.DropColumn(
                name: "Length",
                table: "Starships");

            migrationBuilder.DropColumn(
                name: "MaxAtmospheringSpeed",
                table: "Starships");
        }
    }
}
