using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StreamFaction.Models
{
    public class BanTypes
    {
        public Int32 bant_id { get; set; }
        public String bant_name { get; set; }
        public String bant_description { get; set; }
        [DataType(DataType.Date)]
        public DateTime bant_create_date { get; set; }
        public DateTime bant_modif_date { get; set; }
    }
}
