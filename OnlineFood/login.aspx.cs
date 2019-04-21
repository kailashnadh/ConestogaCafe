using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineFood
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox2.Attributes["type"] = "password";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (authenticate(TextBox1.Text, TextBox2.Text))
            {
                Session["user"] = TextBox1.Text;
                Response.Redirect("~/homes.aspx");
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Invalid Username and Password";
                Label3.ForeColor = System.Drawing.Color.Red;
            }
        }

        private bool authenticate(string Username, string Passsword)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("sp_select", con);
            cmd.CommandType = CommandType.StoredProcedure;
            #pragma warning disable CS0618 // Type or member is obsolete
            string encryp = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "SHA1");
            #pragma warning restore CS0618 // Type or member is obsolete
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", encryp);
            con.Open();
            int codereturn = (int)cmd.ExecuteScalar();
            if(codereturn==1)
            {
                return true;
            }
            else
            {
                return false;
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/register.aspx");
        }
    }
}