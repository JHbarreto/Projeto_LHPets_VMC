using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using System.Collections.Generic;

namespace LHPet.Models
{
    public class Contexto : DbContext
    {
        public Contexto(DbContextOptions<Contexto>options) : base(options)
        {

        }
        public DbSet<Cliente> Cliente { get; set; }
        public DbSet<Fornecedor> Fornecedor { get; set; }
    }
}
