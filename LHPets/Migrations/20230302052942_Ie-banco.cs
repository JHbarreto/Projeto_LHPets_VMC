using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace LHPets.Migrations
{
    /// <inheritdoc />
    public partial class Iebanco : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Ie",
                table: "Fornecedor",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Ie",
                table: "Fornecedor");
        }
    }
}
