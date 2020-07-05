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
    public partial class ViewEnquiries : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["pratik"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ownername"] == null)
                Response.Redirect("AdminLogin.aspx");

            SqlConnection con = new SqlConnection(cs);
            string squery = "select EnqId from Enquiries";
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
            int EnqId = Convert.ToInt32(GridView1.SelectedValue);
            string squery = "select * from Enquiries where EnqId = @EnqId";
            SqlCommand com = new SqlCommand(squery, con);
            com.Parameters.AddWithValue("EnqId", EnqId);
            con.Open();
            SqlDataReader reads = com.ExecuteReader(); //reading
            reads.Read();
            lblenq.Visible = true;
            details = "<br>" + "Enquiry id  - " + reads[0] + "<br><br>";
            details += "Enquirer Name   - " + reads[1] + "<br><br>";
            details += "Enquirer Email Id   - " + reads[2] + "<br><br>";
            details += "Enquirer Company Name   - " + reads[3] + "<br><br>";
            details += "Enquirer Mobile No.  - " + reads[4] + "<br><br>";
            details += "Enquirer Address  - " + reads[5] + "<br><br>";
            details += "Enquirer Country  - " + reads[6] + "<br><br>";
            details += "Enquirer Product  - " + reads[7] + "<br><br>";
            details += "Enquiry  - " + reads[8] + "<br><br>";
            lblenq.Text = details;
            con.Close();    
        }

        protected void btndel_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            int EnqId = Convert.ToInt32(GridView1.SelectedValue);
            string dquery = "delete from Enquiries where EnqId =" + EnqId;
            SqlCommand com = new SqlCommand(dquery, con);

            if (EnqId == null)
            {
                lblenq.Visible = true;
                lblenq.ForeColor = Color.Red;
                lblenq.Text = "Please Select a Record!";
            }
            else
            {
                con.Open();
                int ans = com.ExecuteNonQuery(); //check if query executed, 1 if success
                if (ans > 0)
                    lblenq.Text = "Record Deleted Successfully!";

                con.Close();
            }
            
        }
    }
}