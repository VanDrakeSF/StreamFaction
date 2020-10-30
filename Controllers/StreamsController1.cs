using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace StreamFaction.Controllers
{
    public class StreamsController1 : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
