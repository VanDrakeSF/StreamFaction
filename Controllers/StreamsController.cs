using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace StreamFaction.Controllers
{
    public class StreamsController : Controller
    {
        public IActionResult Index()
        {
            ViewBag.width = 854;
            ViewBag.height = 480;
            ViewBag.channel = "Van_Drake";
            return View();
        }
    }
}
