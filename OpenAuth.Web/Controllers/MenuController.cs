﻿using System.Web.Mvc;
using OpenAuth.App;
using OpenAuth.Domain.Service;

namespace OpenAuth.Web.Controllers
{
    public class MenuController : Controller
    {
        //
        // GET: /Menu/

        public ActionResult Navigate()
        {
            MenuApp app = new MenuApp(new MenuService());
            var response = app.LoadMenus();
            return PartialView(response);
        }

        public ActionResult List()
        {
            return View();
        }

    }
}
