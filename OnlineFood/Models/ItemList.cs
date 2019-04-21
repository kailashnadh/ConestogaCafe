using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace OnlineFood.Models
{
    public class ItemList
    {
        public ItemList() { }

        public ItemList(Items item, int quantity)
        {
            this.Item = item;
            this.Quantity = quantity;
        }

        public Items Item { get; set; }
        public int Quantity { get; set; }

        public void AddQuantity(int quantity)
        {
            this.Quantity += quantity;
        }
        public Items Display()
        {
            Items it = new Items();
            it.item_name = Item.item_name;
            it.quantity = Quantity;
            it.item_price = Item.item_price;
           
            return it;
        }
    }
}