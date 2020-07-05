using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;

namespace YogeshIndustry.admin
{
    public partial class ViewCareers : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["pratik"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ownername"] == null)
                Response.Redirect("AdminLogin.aspx");

            SqlConnection con = new SqlConnection(cs);
            string squery = "select CId from Career";
            SqlCommand com = new SqlCommand(squery, con);
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            adap.Fill(ds);
            GridView1.AutoGenerateSelectButton = true;
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string details;
            SqlConnection con = new SqlConnection(cs);
            int CId = Convert.ToInt32(GridView1.SelectedValue);
            string squery = "select * from Career where CId = @CId";
            SqlCommand com = new SqlCommand(squery, con);
            com.Parameters.AddWithValue("CId", CId);
            con.Open();
            SqlDataReader reads = com.ExecuteReader(); //reading
            reads.Read();
            lblcar.Visible = true;
            details = "<br>" + "Applicant id  - " + reads[0] + "<br><br>";
            details += "Applicant Name   - " + reads[1] + "<br><br>";
            details += "Applicant Email Id   - " + reads[2] + "<br><br>";
            details += "Applicant Mobile No.   - " + reads[3] + "<br><br>";
            details += "Applicant Address  - " + reads[4] + "<br><br>";
            details += "Applicant Country  - " + reads[5] + "<br><br>";
            details += "Applicant Details  - " + reads[6] + "<br><br>";
            lblcar.Text = details;
            con.Close();
        }

        protected void btndel_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            int CId = Convert.ToInt32(GridView1.SelectedValue);
            string dquery = "delete from Career where CId =" + CId;
            SqlCommand com = new SqlCommand(dquery, con);

            if (CId == null)
            {
                lblcar.Visible = true;
                lblcar.ForeColor = Color.Red;
                lblcar.Text = "Please Select a Record!";
            }
            else
            {
                con.Open();
                int ans = com.ExecuteNonQuery(); //check if query executed, 1 if success
                if (ans > 0)
                    lblcar.Text = "Record Deleted Successfully!";

                con.Close();
            }
        }
    }
}