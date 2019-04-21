using OnlineFood.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineFood
{
    public partial class desert : System.Web.UI.Page
    {
        static List<Items> desertList = new List<Items>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                desertList = desertAccessLayer.getDesert();
                for (int i = 0; i < desertList.Count; i++)
                {
                    string value1 = desertList[i].item_name.Substring(0, desertList[i].item_name.IndexOf("_")).ToUpper(); ;
                    string value2 = desertList[i].item_name.Substring(desertList[i].item_name.LastIndexOf('_') + 1).ToUpper();
                    desertList[i].item_name = value1 + " " + value2;
                }
                GridView1.DataSource = desertList;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var closeLink = (Control)sender;
            GridViewRow row = (GridViewRow)closeLink.NamingContainer;
            string firstCellText = row.Cells[2].Text;
            Items item = new Items();
            string output = firstCellText.ToLower().Replace(" desert", "_desert");
            for (int i = 0; i < desertList.Count; i++)
            {
                if (desertList[i].item_name.ToLower().Replace(" desert", "_desert") == output)
                {
                    item.item_id = desertList[i].item_id;
                    item.item_name = desertList[i].item_name;
                    item.item_price = desertList[i].item_price;
                    item.item_description = desertList[i].item_description;
                    item.image = desertList[i].image;
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