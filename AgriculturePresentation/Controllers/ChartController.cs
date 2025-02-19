using AgriculturePresentation.Models;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace AgriculturePresentation.Controllers
{
    public class ChartController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult ProductChart()
        {
            List<ProductClass> productsClasses = new List<ProductClass>();
            productsClasses.Add(new ProductClass()
            {
                productname = "Buğday",
                productvalue = 850
            });

            productsClasses.Add(new ProductClass()
            {
                productname = "Mercimek",
                productvalue = 480
            });
            productsClasses.Add(new ProductClass()
            {
                productname = "Arpa",
                productvalue = 720
            });
            productsClasses.Add(new ProductClass()
            {
                productname = "Pirinç",
                productvalue = 600
            });
            productsClasses.Add(new ProductClass()
            {
                productname = "Domates",
                productvalue = 540
            });

            return Json(new { jsonlist = productsClasses });
        }
    }
}
