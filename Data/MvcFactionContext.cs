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
        public DbSet<Articles> Articles { get; set; }
        public DbSet<Bans> Bans { get; set; }
        public DbSet<BanTypes> BanTypes { get; set; }
        public DbSet<Channels> Channels { get; set; }
        public DbSet<Events> Events { get; set; }
        public DbSet<EventTypes> EventTypes { get; set; }
        public DbSet<Status> Status { get; set; }
        public DbSet<UserInfos> UserInfos { get; set; }
        public DbSet<Users> Users { get; set; }
    }
}
