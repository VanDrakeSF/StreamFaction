using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StreamFaction.Models
{
    public class Status
    {
        public Int32 sta_id { get; set; }
        public String name { get; set; }
        public String sta_logo { get; set; }

        [DataType(DataType.Date)]
        public DateTime sta_create_date { get; set; }
        public DateTime sta_modif_date { get; set; }
    }
}
