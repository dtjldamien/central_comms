using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using Updates.Data;

namespace Updates.Repo
{
    public class UpdateDbContext:DbContext
    {
        public UpdateDbContext(DbContextOptions<UpdateDbContext> options) : base(options) { }
    
        public DbSet<Update> Updates { get; set; }
    }
}
