using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Globalization;
using System.Web.Configuration;
using YogeshIndustry.App_Code;

namespace YogeshIndustry
{
    public partial class Pareos : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["pratik"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Pr_Click(object sender, EventArgs e)
        {
            if (Session["mail"] == null)
            {
                Response.Redirect("SignIn.aspx");
            }
            else
            {
                var argument = ((Button)sender).CommandArgument;
                SqlConnection con = new SqlConnection(cs);
                SqlCommand com = new SqlCommand("select * from Product where P_Name=@P_Name", con);
                com.Parameters.AddWithValue("@P_Name", argument);
                con.Open();
                SqlDataReader rd = com.ExecuteReader();
                rd.Read();
                int pid = rd.GetInt32(0);
                string pname = rd.GetString(2);
                Double pprice = rd.GetDouble(3);

                Cart c = (Cart)Session["cart"];
                c.Insert(pid, pprice, 1, pname);
                Session["cart"] = c;
                con.Close();
                Response.Redirect("FormalShirts.aspx");
            }
        }
    }
}