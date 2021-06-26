using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Project03_FrontEnd.Data;
using Project03_FrontEnd.Models;

namespace Project03_FrontEnd.Controllers
{
    public class ApprenticesController : Controller
    {
        private Project03_FrontEndContext db = new Project03_FrontEndContext();

        // GET: Apprentices
        public ActionResult Index()
        {
            return View(db.Apprentices.ToList());
        }

        // GET: Apprentices/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Apprentice apprentice = db.Apprentices.Find(id);
            if (apprentice == null)
            {
                return HttpNotFound();
            }
            return View(apprentice);
        }

        // GET: Apprentices/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Apprentices/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Name")] Apprentice apprentice)
        {
            if (ModelState.IsValid)
            {
                db.Apprentices.Add(apprentice);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(apprentice);
        }

        // GET: Apprentices/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Apprentice apprentice = db.Apprentices.Find(id);
            if (apprentice == null)
            {
                return HttpNotFound();
            }
            return View(apprentice);
        }

        // POST: Apprentices/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name")] Apprentice apprentice)
        {
            if (ModelState.IsValid)
            {
                db.Entry(apprentice).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(apprentice);
        }

        // GET: Apprentices/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Apprentice apprentice = db.Apprentices.Find(id);
            if (apprentice == null)
            {
                return HttpNotFound();
            }
            return View(apprentice);
        }

        // POST: Apprentices/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Apprentice apprentice = db.Apprentices.Find(id);
            db.Apprentices.Remove(apprentice);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
