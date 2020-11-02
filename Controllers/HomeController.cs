using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using SQLitePCL;
using StreamFaction.Data;
using StreamFaction.Models;

namespace StreamFaction.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly MvcFactionContext _context;

        public HomeController(MvcFactionContext context, ILogger<HomeController> logger)
        {
            _context = context;
            _logger = logger;
        }
        public IActionResult Index()
        {
            ViewBag.width = 854;
            ViewBag.height = 480;
            var channel = _context.Channels
                .FirstOrDefault(m => m.cha_name == "Stream_Faction");
            if (channel == null)
            {
                return NotFound();
            }
            ViewBag.channel = channel.cha_name;
            return View(ViewBag);
        }
        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult Contact()
        {
            return View();
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
