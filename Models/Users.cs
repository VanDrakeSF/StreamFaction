using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StreamFaction.Models
{
    public class Users
    {
        [Key]
        public Int32 usr_id { get; set; }
        public String usr_login { get; set; }
        public String usr_psw { get; set; }
        [DataType(DataType.Date)]
        public DateTime usr_create_date { get; set; }
        public DateTime usr_modif_date { get; set; }
    }
}
