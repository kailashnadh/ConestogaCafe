using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineFood.Models
{
    public class CartItemList
    {
        private List<ItemList> cartItems;

        public CartItemList()
        {
            cartItems = new List<ItemList>();
        }

        public int Count
        {
            get { return cartItems.Count; }
        }

        public ItemList this[int index]
        {
            get { return cartItems[index]; }
            set { cartItems[index] = value; }
        }

        public ItemList this[string id]
        {
            get
            {
                foreach (ItemList c in cartItems)
                    if (c.Item.item_name.ToString().Equals(id)) return c;
                return null;
            }
        }

        public static CartItemList GetCart()
        {
            CartItemList cart = (CartItemList)HttpContext.Current.Session["Cart"];
            if (cart == null)
                HttpContext.Current.Session["Cart"] = new CartItemList();
            return (CartItemList)HttpContext.Current.Session["Cart"];
        }

        public void AddItem(Items item, int quantity)
        {
            ItemList c = new ItemList(item, quantity);
            cartItems.Add(c);
        }

        public void RemoveAt(int index)
        {
            cartItems.RemoveAt(index);
        }

        public void Clear()
        {
            cartItems.Clear();
        }
    }
}