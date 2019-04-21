using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineFood.Models;

namespace OnlineFood
{
    public partial class cart : System.Web.UI.Page
    {
        private CartItemList cartList;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack) this.DisplayCart();
        }
        private void DisplayCart()
        {
            cartList = CartItemList.GetCart();
            if (GridView1.Rows.Count > 0)
            {
                GridView1.DataSource=null;
            }
            DataTable dt = new DataTable();
           
            dt.Columns.Add("ItemName");
            dt.Columns.Add("Quantity");
            dt.Columns.Add("Price");
            
            for (int i = 0; i < cartList.Count; i++)
            {
                Items it = new Items();
                it = cartList[i].Display();
                dt.Rows.Add(it.item_name, it.quantity, it.item_price);
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user_name = (string)Session["user"];
            int sum_price = 0;
            if (GridView1.Rows.Count > 0)
            {        
                for(int j=0;j<GridView1.Rows.Count;j++)
                {
                    string val=GridView1.Rows[j].Cells[2].Text;
                     int value = Convert.ToInt32(val);
                    sum_price = sum_price + value;
                }
                DateTime time = DateTime.Now;
                string order_date =(DateTime.Now.ToString("yyyy-MM-dd"));
                string format = time.ToString("dHHmmss");
                double order_id = Convert.ToDouble(format);
                string order_address = TextBox1.Text;
                Session["address"] = order_address;
                Session["orderid"] = order_id;            
                string conn = "";
                conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                SqlConnection objsqlconn = new SqlConnection(conn);
                objsqlconn.Open();
                string insertdata = "insert into orders(order_id,user_name,order_price,order_date,order_address,del_name,phone_no) values(" + order_id + ",'" + user_name + "','" + sum_price + "','" + order_date + "','" + order_address + "' ,'" + TextBox4.Text + "' ,'" + TextBox3.Text + "' )";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = insertdata;
                cmd.Connection = objsqlconn;
                cmd.ExecuteNonQuery();
                int item_id = 0;
                for (int j = 0; j < GridView1.Rows.Count; j++)
                {
                    string item_name = GridView1.Rows[j].Cells[0].Text;
                    if(item_name.ToLower().EndsWith("pizza"))
                    {
                        List<Items> pizzaList = new List<Items>();
                        pizzaList = pizzaAccessLayer.getPizza();
                        for (int i = 0; i < pizzaList.Count; i++)
                        {
                            if (pizzaList[i].item_name == item_name.ToLower().Replace(" pizza", "_pizza"))
                            {
                                item_id = pizzaList[i].item_id;
                            }
                        }
                        int quantity = Convert.ToInt32(GridView1.Rows[j].Cells[1].Text);
                        int item_price = Convert.ToInt32(GridView1.Rows[j].Cells[2].Text);
                        string insert_item = "insert into order_items(order_id,item_id,item_price,quantity) values(" + order_id + ",'" + item_id + "','" + item_price + "','" + quantity + "')";
                        SqlCommand cmd1 = new SqlCommand();
                        cmd1.CommandText = insert_item;
                        cmd1.Connection = objsqlconn;
                        cmd1.ExecuteNonQuery();
                    }

                    if (item_name.ToLower().EndsWith("starter"))
                    {
                        List<Items> starterList = new List<Items>();
                        starterList = starterAccessLayer.getStarter();
                        for (int i = 0; i < starterList.Count; i++)
                        {
                            if (starterList[i].item_name == item_name.ToLower().Replace(" starter", "_starter"))
                            {
                                item_id = starterList[i].item_id;
                            }
                        }
                        int quantity = Convert.ToInt32(GridView1.Rows[j].Cells[1].Text);
                        int item_price = Convert.ToInt32(GridView1.Rows[j].Cells[2].Text);
                        string insert_item = "insert into order_items(order_id,item_id,item_price,quantity) values(" + order_id + ",'" + item_id + "','" + item_price + "','" + quantity + "')";
                        SqlCommand cmd1 = new SqlCommand();
                        cmd1.CommandText = insert_item;
                        cmd1.Connection = objsqlconn;
                        cmd1.ExecuteNonQuery();
                    }

                    if (item_name.ToLower().EndsWith("desert"))
                    {
                        List<Items> desertList = new List<Items>();
                        desertList = desertAccessLayer.getDesert();
                        for (int i = 0; i < desertList.Count; i++)
                        {
                            if (desertList[i].item_name == item_name.ToLower().Replace(" desert", "_desert"))
                            {
                                item_id = desertList[i].item_id;
                            }
                        }
                        int quantity = Convert.ToInt32(GridView1.Rows[j].Cells[1].Text);
                        int item_price = Convert.ToInt32(GridView1.Rows[j].Cells[2].Text);
                        string insert_item = "insert into order_items(order_id,item_id,item_price,quantity) values(" + order_id + ",'" + item_id + "','" + item_price + "','" + quantity + "')";
                        SqlCommand cmd1 = new SqlCommand();
                        cmd1.CommandText = insert_item;
                        cmd1.Connection = objsqlconn;
                        cmd1.ExecuteNonQuery();
                    }
                }
                objsqlconn.Close();
            }
            
            Response.Redirect("checkout.aspx");

        }
    }
}