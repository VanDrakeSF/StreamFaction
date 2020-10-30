using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StreamFaction.Models
{
    public class Channels
    {
        public Int32 usrif_id { get; set; }
        public String cha_name { get; set; }
        public String cha_description { get; set; }
        public String cha_facebook { get; set; }
        public String cha_twitter { get; set; }
        public String cha_instagram { get; set; }
        public String cha_discord { get; set; }
        [DataType(DataType.Date)]
        public DateTime cha_create_date { get; set; }
        public DateTime cha_modif_date { get; set; }
    }
}
