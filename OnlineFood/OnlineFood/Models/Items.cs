using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineFood.Models
{
    public class Items
    {
        public int item_id { get; set; }
        public string item_name { get; set; }
        public string item_description { get; set; }
        public double item_price { get; set; }

        public string image { get; set; }
        public int quantity { get; set; }
    }

 
}