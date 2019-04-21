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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox2.Attributes["type"] = "password";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("sp_insertuser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            #pragma warning disable CS0618 // Type or member is obsolete
            string encryp = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "SHA1");
            #pragma warning restore CS0618 // Type or member is obsolete
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", encryp);
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
            con.Open();
            int codereturn = (int)cmd.ExecuteScalar();
            if (codereturn == -1)
            {
                Label3.Visible = true;
                Label3.Text = "Username already exist!";
                Label3.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Response.Redirect("~/login.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }
    }
}