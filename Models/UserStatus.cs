using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StreamFaction.Models
{
    public class UserStatus
    {
        [Key]
        public Int32 usrsta_id { get; set; }
        public Int32 usr_id { get; set; }
        public Int32 sta_id { get; set; }
        public Boolean usrsta_enabled { get; set; }
        [DataType(DataType.Date)]
        public DateTime usrsta_create_date { get; set; }
        public DateTime usrsta_modif_date { get; set; }
    }
}
