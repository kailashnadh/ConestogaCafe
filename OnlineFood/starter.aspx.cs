using OnlineFood.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineFood
{
    public partial class starter : System.Web.UI.Page
    {
        static List<Items> starterList = new List<Items>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                starterList = starterAccessLayer.getStarter();
                for (int i = 0; i < starterList.Count; i++)
                {
                    string value1 = starterList[i].item_name.Substring(0, starterList[i].item_name.IndexOf("_")).ToUpper(); ;
                    string value2 = starterList[i].item_name.Substring(starterList[i].item_name.LastIndexOf('_') + 1).ToUpper();
                    starterList[i].item_name = value1 + " " + value2;
                }
                GridView1.DataSource = starterList;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var closeLink = (Control)sender;
            GridViewRow row = (GridViewRow)closeLink.NamingContainer;
            string firstCellText = row.Cells[2].Text;
            Items item = new Items();
            string output = firstCellText.ToLower().Replace(" starter", "_starter");
            for (int i = 0; i < starterList.Count; i++)
            {
                if (starterList[i].item_name.ToLower().Replace(" starter", "_starter") == output)
                {
                    item.item_id = starterList[i].item_id;
                    item.item_name = starterList[i].item_name;
                    item.item_price = starterList[i].item_price;
                    item.item_description = starterList[i].item_description;
                    item.image = starterList[i].image;
                }
            }
            CartItemList cart = CartItemList.GetCart();
            ItemList cartItem = cart[item.item_name];
            int quantity = 1;
            if (cartItem == null)
            {
                cart.AddItem(item, quantity);
            }
            else
            {
                cartItem.AddQuantity(quantity);
            }
            Response.Redirect("~/cart.aspx");
        }
    }
}