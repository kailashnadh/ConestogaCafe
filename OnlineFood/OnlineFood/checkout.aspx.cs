using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineFood
{
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            string address = (string)Session["address"];
            double order = (double)Session["orderid"];
            string order_id = order.ToString();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string checkuser = "SELECT o.order_address, o.del_name, o.phone_no,o.order_price, i.item_name, oi.quantity FROM orders AS o INNER JOIN order_items AS oi ON o.order_id = oi.order_id INNER JOIN items AS i ON oi.item_id = i.item_id WHERE o.order_id ='" + order_id + "' ";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            string namequan = "";
            string name = "";
            string number = "";
            string order_price = "";
            if (dt.Rows.Count > 0)
            {
                for(int i=0;i<dt.Rows.Count;i++)
                {
                    DataRow row = dt.Rows[i];
                    string itemname= row["item_name"].ToString();
                    string quantity= row["quantity"].ToString();
                    name = row["del_name"].ToString();
                    number = row["phone_no"].ToString();
                    order_price = row["order_price"].ToString().Replace(".0000"," CAD");
                    namequan = itemname + "(" + quantity + ")" + "," + namequan;
                }              
            }
            Label1.Text = name;
            Label2.Text = number;
            Label3.Text = address;
            Label4.Text = namequan;
            Label5.Text = order_price;
        }
    }
}