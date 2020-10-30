using Microsoft.EntityFrameworkCore;
using StreamFaction.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace StreamFaction.Data
{
    public class MvcFactionContext : DbContext
    {
        public MvcFactionContext(DbContextOptions<MvcFactionContext> options) : base(options)
        {
        }
        public DbSet<Users> Articles { get; set; }
        public DbSet<Users> Bans { get; set; }
        public DbSet<Users> BanTypes { get; set; }
        public DbSet<Users> Channels { get; set; }
        public DbSet<Users> Events { get; set; }
        public DbSet<Users> EventTypes { get; set; }
        public DbSet<Users> Status { get; set; }
        public DbSet<Users> UserInfos { get; set; }
        public DbSet<Users> Users { get; set; }
    }
}
