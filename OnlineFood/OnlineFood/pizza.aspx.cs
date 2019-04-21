using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineFood.Models;

namespace OnlineFood
{
    public partial class pizza : System.Web.UI.Page
    {
        static List<Items> pizzaList = new List<Items>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
               
                pizzaList = pizzaAccessLayer.getPizza();
                for (int i = 0; i < pizzaList.Count; i++)
                {
                    string value1 = pizzaList[i].item_name.Substring(0, pizzaList[i].item_name.IndexOf("_")).ToUpper(); ;
                    string value2 = pizzaList[i].item_name.Substring(pizzaList[i].item_name.LastIndexOf('_') + 1).ToUpper();
                    pizzaList[i].item_name = value1 + " " + value2;
                }
                GridView1.DataSource = pizzaList;
                GridView1.DataBind();
            }
           
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            var closeLink = (Control)sender;
            GridViewRow row = (GridViewRow)closeLink.NamingContainer;
            string firstCellText = row.Cells[2].Text;
            Items item = new Items();
            string output = firstCellText.ToLower().Replace(" pizza", "_pizza");
            for(int i=0;i<pizzaList.Count;i++)
            {
                if(pizzaList[i].item_name.ToLower().Replace(" pizza", "_pizza")== output)
                {
                    item.item_id = pizzaList[i].item_id;
                    item.item_name = pizzaList[i].item_name;
                    item.item_price = pizzaList[i].item_price;
                    item.item_description = pizzaList[i].item_description;
                    item.image = pizzaList[i].image;
                }
            }
            CartItemList cart = CartItemList.GetCart();
            ItemList cartItem = cart[item.item_name];
            int quantity = 1;
            if (cartItem == null)
            {
                cart.AddItem(item,quantity);
            }
            else
            {
                cartItem.AddQuantity(quantity);
            }
            Response.Redirect("~/cart.aspx");
        }


    }
}