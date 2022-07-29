using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace eshopping
{
    public partial class Forget_Password : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select cpassword from customer_information where email='"+email.Text+"'", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            Label1.Text = "your password is "+ds.Tables[0].Rows[0]["cpassword"].ToString();
         
          
            //MailMessage message = new MailMessage(from, to);

            //string mailbody = "Test Mail from Heena";
            //message.Subject = "Sending Email Using Asp.Net & C#";
            //message.Body = mailbody;
            //message.BodyEncoding = Encoding.UTF8;
            //message.IsBodyHtml = true;

            //SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            //client.UseDefaultCredentials = false;
            //System.Net.NetworkCredential basicCredential1 = new
           
            //client.EnableSsl = true;

            //client.Credentials = basicCredential1;
            //try
            //{
            //    client.Send(message);
            //}

            //catch (Exception ex)
            //{
            //    throw ex;
            //}
        }
    }
}