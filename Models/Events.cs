using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StreamFaction.Models
{
    public class Events
    {
        [Key]
        public Int32 evt_id { get; set; }
        public String evt_name { get; set; }
        public String evt_description { get; set; }
        [DataType(DataType.Date)]
        public DateTime evt_create_date { get; set; }
        public DateTime evt_modif_date { get; set; }
    }
}
