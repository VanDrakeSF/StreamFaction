using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StreamFaction.Models
{
    public class UserInfos
    {
        public Int32 usrif_id { get; set; }
        public String usrif_name { get; set; }
        public Boolean usrif_name_visible { get; set; }
        public String usrif_surname { get; set; }
        public Boolean usrif_surname_visible { get; set; }
        public String usrif_avatar { get; set; }
        public Boolean usrif_BDdate_visible { get; set; }
        public String usrif_description { get; set; }

        [DataType(DataType.Date)]
        public DateTime usrif_BDdate { get; set; }
        public DateTime usrif_create_date { get; set; }
        public DateTime usrif_modif_date { get; set; }
    }
}
