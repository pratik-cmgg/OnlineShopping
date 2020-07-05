using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Web.Configuration;
using System.Net.Mail;
using YogeshIndustry.App_Code;
using System.Data;

namespace YogeshIndustry
{
    public partial class ViewCart : System.Web.UI.Page
    {
        Cart c;
        string cs = ConfigurationManager.ConnectionStrings["pratik"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["customeremail"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
                c = (Cart)Session["cart"];


            if (!Page.IsPostBack)
            {
                ReBindGrid();
            }

            if (c.Items == null)
            {
                TotalLabel.Visible = false;
            } 
        }

        protected void grdCart_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdCart.EditIndex = e.NewEditIndex;
            ReBindGrid();
        }

        protected void grdCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txtQuantity = (TextBox)grdCart.Rows[e.RowIndex].Cells[1].Controls[0];
            int Quantity = Convert.ToInt32(txtQuantity.Text);
            if (Quantity == 0)
            {
                
                c.Items.RemoveAt(e.RowIndex);
            }
            else
            {
                c.Items[e.RowIndex].Quantity = Quantity;
            }
            grdCart.EditIndex = -1;
            ReBindGrid();
        }

        protected void grdCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdCart.EditIndex = -1;
            ReBindGrid();
        }

        protected void grdCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            c.Items.RemoveAt(e.RowIndex);
            ReBindGrid();
        }

        private void ReBindGrid()
        {
            grdCart.DataSource = c.Items;
            DataBind();
            TotalLabel.Text = string.Format("Total:{0,19:C}", c.Total);
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }

        public static int GetRandomNumber(int min, int max)
        {
            Random getrandom = new Random();
            object syncLock = new object();

            lock (syncLock)
            { // synchronize
                return getrandom.Next(min, max);
            }
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            try
            {
                int orderid;
                SqlConnection con = new SqlConnection(cs);
                SqlCommand com = new SqlCommand("select max(O_Id) from Orders", con);
                SqlDataAdapter adap = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                con.Open();
                adap.Fill(dt);

                //retrieve orderid
                if (dt.Rows[0].ItemArray[0] is DBNull)
                    orderid = 1;
                else
                    orderid = Convert.ToInt32(dt.Rows[0].ItemArray[0]) + 1;
                con.Close();
                //details
                string orderdetails = "Your Order Details are as follows:\n <br>"; 
                orderdetails += "Orderid=" + orderid; 

                string customeremailid = Session["customeremail"].ToString();
                string totalamount = c.Total.ToString();

                //storing info in orders table
                SqlCommand com1 = new SqlCommand("insert into Orders(O_Date,Cust_Mail,Total_Amt) values(@O_Date,@Cust_Mail,@Total_Amt)", con);
              //  com1.Parameters.AddWithValue("@O_Id", orderid);
                com1.Parameters.AddWithValue("@O_Date", DateTime.Now);
                com1.Parameters.AddWithValue("@Cust_Mail", customeremailid);
                com1.Parameters.AddWithValue("@Total_Amt", totalamount);
                con.Open();
                com1.ExecuteNonQuery();
                orderdetails += "Order Date=" + DateTime.Now.ToString();
                orderdetails += "Total Amount=" + totalamount;

                //storing info in ordered products
                int productid, quantity;
                double price;
                string productname;

                SqlCommand com2 = new SqlCommand("insert into OrderedProd values(@O_Id,@P_Id,@P_Name,@Quantity,@Price)", con);
                foreach (CartItem item in c.Items)
                {
                    com2.Parameters.Clear();
                  //  Response.Write("Adding items to ordered table");
                    productid = item.ProductID;
                    price = item.Price;
                    productname = item.ProductName;
                    quantity = item.Quantity;

                    com2.Parameters.AddWithValue("@O_Id", orderid);
                    com2.Parameters.AddWithValue("@P_Id", productid);
                    com2.Parameters.AddWithValue("@P_Name", productname);
                    com2.Parameters.AddWithValue("@Quantity", quantity);
                    com2.Parameters.AddWithValue("@Price", price);
                    com2.ExecuteNonQuery();
                    orderdetails += "ProductName" + productname;
                    orderdetails += "Quantity" + quantity;
                    orderdetails += "Price" + price;
                }
                Session["orderdetails"] = orderdetails;
               
                con.Close();
            }

            catch (Exception oe) { Response.Write(oe.Message); }
            Response.Redirect("ConfirmOrder.aspx");
        }


    }
}