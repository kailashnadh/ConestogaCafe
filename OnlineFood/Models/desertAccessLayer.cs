using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace OnlineFood.Models
{
    public class desertAccessLayer
    {
        public static List<Items> getDesert()
        {
            List<Items> desertList = new List<Items>();
            List<Items> List = new List<Items>();
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand command = new SqlCommand("SELECT * FROM [items]", con);
                con.Open();
                SqlDataReader sdr = command.ExecuteReader();
                while (sdr.Read())
                {
                    Items item = new Items();
                    item.item_id = Convert.ToInt32(sdr["item_id"]);
                    item.item_name = sdr["item_name"].ToString();
                    item.item_price = Convert.ToDouble(sdr["item_price"]);
                    item.item_description = sdr["item_description"].ToString();
                    item.image = "~/Images/deserts/" + item.item_name+".jpg";
                    List.Add(item);
                }
            }
            for (int i = 0; i < List.Count; i++)
            {
                string value = List[i].item_name.Substring(List[i].item_name.LastIndexOf('_') + 1);
                if (value == "desert")
                {
                    desertList.Add(List[i]);
                }
            }
            return desertList;
        }
    }
}