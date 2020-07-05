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

namespace YogeshIndustry
{
    public partial class Careers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlCountry1.DataSource = CountryList();
                ddlCountry1.DataBind();
                ddlCountry1.Items.Insert(0, "Select Country");
            }

        }

        public static List<string> CountryList()
        {
            //create list
            List<string> CultureList = new List<string>();

            //getting specific cultureinfo from cultureinfo class
            CultureInfo[] getCultureInfo = CultureInfo.GetCultures(CultureTypes.SpecificCultures);

            foreach (CultureInfo getCulture in getCultureInfo)
            {
                //creating object of region info
                RegionInfo getRegionInfo = new RegionInfo(getCulture.LCID);
                //adding each country name to array list
                if (!(CultureList.Contains(getRegionInfo.EnglishName)))
                {
                    CultureList.Add(getRegionInfo.EnglishName);
                }
            }
            CultureList.Sort();

            return CultureList;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
            {
                string cs = ConfigurationManager.ConnectionStrings["pratik"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand com = new SqlCommand("insert into Career values (@Name, @Email, @ContNum, @Address, @Country, @Details)", con);
                    com.Parameters.AddWithValue("@Name", TextBox1.Text);
                    com.Parameters.AddWithValue("@Email", TextBox2.Text);
                    com.Parameters.AddWithValue("@ContNum", TextBox3.Text);
                    com.Parameters.AddWithValue("@Address", TextBox4.Text);
                    com.Parameters.AddWithValue("@Country", ddlCountry1.SelectedValue);
                    com.Parameters.AddWithValue("@Details", TextBox5.Text);
                    con.Open();
                    com.ExecuteNonQuery();
                    if (fuResume.HasFile == false)
                    {
                        Label7.Text = "Please first select a file to upload...";
                    }
                    else
                    {
                        string filePath = Server.MapPath("~/Resumes/" + fuResume.FileName);
                        fuResume.SaveAs(filePath);
                    }

                    Label7.Text = "Submitted!";
                    Label7.ForeColor = Color.Green;
                }
            }
            else
            {
                Label7.ForeColor = Color.Red;
                Label7.Text = "All Fields are Mandatory!";
            }

        }
    }
}