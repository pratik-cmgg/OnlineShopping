using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using YogeshIndustry.App_Code;

namespace YogeshIndustry
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnreg_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["pratik"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string query = "select U_Name,U_Mail,U_Pass from Users where U_Mail=@U_Mail And U_Pass=@U_Pass";
            SqlCommand com = new SqlCommand(query, con);
            Session["mail"] = tbEmail.Text;
            com.Parameters.AddWithValue("@U_Mail", tbEmail.Text);
            com.Parameters.AddWithValue("@U_Pass", tbPass.Text);
            con.Open();
            SqlDataReader rd = com.ExecuteReader();
            if (rd.Read())
            {
                Session["customeremail"] = tbEmail.Text;
                Cart c = new Cart();
                Session["cart"] = c;
                ((Button)Master.FindControl("btnLogout")).Text = "Logout";
                Response.Redirect("FormalShirts.aspx");
            }
            else
            {
                lblMsg.Text = "Please Enter your correct user name or Password";
                tbEmail.Text = "";
                tbPass.Text = "";
                tbEmail.Focus();
                Session.Clear();
            }
            con.Close();
        }
    }
}