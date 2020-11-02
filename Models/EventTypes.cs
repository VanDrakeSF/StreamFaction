using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StreamFaction.Models
{
    public class EventTypes
    {
        [Key]
        public Int32 evtt_id { get; set; }
        public String evtt_name { get; set; }
        [DataType(DataType.Date)]
        public DateTime evtt_create_date { get; set; }
        public DateTime evtt_modif_date { get; set; }
    }
}
