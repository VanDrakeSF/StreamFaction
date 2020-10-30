using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StreamFaction.Models
{
    public class Articles
    {
		public Int32 artc_id { get; set; }
		public String artc_title { get; set; }
		public String artc_content { get; set; }
		public String artc_img { get; set; }
		[DataType(DataType.Date)]
		public DateTime artc_create_date { get; set; }
		public DateTime artc_modif_date { get; set; }
	}
}
