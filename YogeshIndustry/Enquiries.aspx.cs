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
    public partial class Enquiries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlCountry.DataSource = CountryList();
                ddlCountry.DataBind();
                ddlCountry.Items.Insert(0, "Select Country");
                ddlProduct.Items.Insert(0, "Select Product");
            }


        }

        protected void btnEnq_Click(object sender, EventArgs e)
        {
            if (tbName.Text != "" && tbEmail.Text != "" && tbCompName.Text != "" && tbContNum.Text != "" && tbAddress.Text != "" && tbEnquiry.Text != "")
            {
                string cs = ConfigurationManager.ConnectionStrings["pratik"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand com = new SqlCommand("insert into Enquiries values (@Name, @Email, @CompName, @ContNum, @Address, @Country, @Product, @UserEnquiry)", con);
                    com.Parameters.AddWithValue("@Name", tbName.Text);
                    com.Parameters.AddWithValue("@Email", tbEmail.Text);
                    com.Parameters.AddWithValue("@CompName", tbCompName.Text);
                    com.Parameters.AddWithValue("@ContNum", tbContNum.Text);
                    com.Parameters.AddWithValue("@Address", tbAddress.Text);
                    com.Parameters.AddWithValue("@Country", ddlCountry.SelectedValue);
                    com.Parameters.AddWithValue("@Product", ddlProduct.SelectedValue);
                    com.Parameters.AddWithValue("@UserEnquiry", tbEnquiry.Text);
                    con.Open();
                    com.ExecuteNonQuery();
                    lblMsg.Text = "Enquiry Sent!";
                    lblMsg.ForeColor = Color.Green;
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "All Fields are Mandatory!";
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

        protected void tbName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}