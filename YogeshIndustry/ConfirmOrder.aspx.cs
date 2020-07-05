using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

namespace YogeshIndustry
{
    public partial class ConfirmOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();

            mail.To.Add(emailTxt.Text);
            mail.From = new MailAddress("cmgg5118@gmail.com");
            mail.Subject = "Your order has been confirmed";

            mail.Body = "Thank you for shopping! ";


            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
            smtp.Credentials = new System.Net.NetworkCredential
                 ("cmgg5118@gmail.com", "cmggpratik"); // ***use valid credentials***
            smtp.Port = 587;

            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            smtp.Send(mail);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Payment Successfull')", true);
        }

        protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
        {

        }
    }
}