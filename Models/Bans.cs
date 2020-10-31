using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StreamFaction.Models
{
    public class Bans
    {
        public Int32 ban_id { get; set; }
        public String ban_description { get; set; }
        [DataType(DataType.Date)]
        public DateTime ban_start_date { get; set; }
        public DateTime ban_end_date { get; set; }
        public DateTime ban_create_date { get; set; }
        public DateTime ban_modif_date { get; set; }
    }
}
