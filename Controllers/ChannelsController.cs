using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using StreamFaction.Data;
using StreamFaction.Models;

namespace StreamFaction.Controllers
{
    public class ChannelsController : Controller
    {
        private readonly MvcFactionContext _context;

        public ChannelsController(MvcFactionContext context)
        {
            _context = context;
        }

        // GET: Channels
        public async Task<IActionResult> Index()
        {
            return View(await _context.Channels.ToListAsync());
        }

        // GET: Channels/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var channels = await _context.Channels
                .FirstOrDefaultAsync(m => m.cha_id == id);
            if (channels == null)
            {
                return NotFound();
            }

            return View(channels);
        }

        // GET: Channels/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Channels/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("cha_id,cha_usr_id,cha_name,cha_description,cha_facebook,cha_twitter,cha_instagram,cha_discord,cha_create_date,cha_modif_date")] Channels channels)
        {
            if (ModelState.IsValid)
            {
                _context.Add(channels);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(channels);
        }

        // GET: Channels/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var channels = await _context.Channels.FindAsync(id);
            if (channels == null)
            {
                return NotFound();
            }
            return View(channels);
        }

        // POST: Channels/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("cha_id,cha_usr_id,cha_name,cha_description,cha_facebook,cha_twitter,cha_instagram,cha_discord,cha_create_date,cha_modif_date")] Channels channels)
        {
            if (id != channels.cha_id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(channels);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ChannelsExists(channels.cha_id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(channels);
        }

        // GET: Channels/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var channels = await _context.Channels
                .FirstOrDefaultAsync(m => m.cha_id == id);
            if (channels == null)
            {
                return NotFound();
            }

            return View(channels);
        }

        // POST: Channels/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var channels = await _context.Channels.FindAsync(id);
            _context.Channels.Remove(channels);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ChannelsExists(int id)
        {
            return _context.Channels.Any(e => e.cha_id == id);
        }
    }
}
