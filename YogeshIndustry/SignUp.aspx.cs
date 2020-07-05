using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Web.Configuration;

namespace YogeshIndustry
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnreg_Click(object sender, EventArgs e)
        {
            if (tbname.Text != "" && tbmob.Text != "" && tbemail.Text != "" && tbpass.Text != "" && tbcpass.Text != "" && tbadd.Text != "")
            {
                string cs = ConfigurationManager.ConnectionStrings["pratik"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand com = new SqlCommand("insert into Users values (@U_Name, @U_Mail, @U_Pass, @U_Mob, @U_Add)", con);
                    com.Parameters.AddWithValue("@U_Name", tbname.Text);
                    com.Parameters.AddWithValue("@U_Mail", tbemail.Text);
                    com.Parameters.AddWithValue("@U_Pass", tbpass.Text);
                    com.Parameters.AddWithValue("@U_Mob", tbmob.Text);
                    com.Parameters.AddWithValue("@U_Add", tbadd.Text);
                    con.Open();
                    com.ExecuteNonQuery();
                    lblMsg.Text = "Registered!";
                    lblMsg.ForeColor = Color.Green;
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "All Fields are Mandatory!";
            }
        }
    }
}