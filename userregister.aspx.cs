using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshopping
{
    public partial class userregister : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnadd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into customer_information values('" + firstname.Text + "','" + lastname.Text + "','" + email.Text + "','" + cpassword.Text + "','" + contactnumber.Text + "','" + RadioButtonList1.SelectedItem.Text + "')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Label1.Visible = true;
            Label1.Text = "Customer Registered successfully";
        }
    }
}