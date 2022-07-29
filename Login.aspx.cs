using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshopping
{
    public partial class Login : System.Web.UI.Page
    {
        SqlDataAdapter adapter;
        DataTable dt = new DataTable();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnadd_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem.Text == "Admin")
            {
                conn.Open();
                string sql = "SELECT * from admin_details where a_email='" + email.Text + "' and password='" + password.Text + "'";

                adapter = new SqlDataAdapter(sql, conn);
                //fill the dataset
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["email"] = email.Text;
                    Session["id"] = dt.Rows[0]["a_id"].ToString();
                    Response.Redirect("admin/add_category.aspx");

                }
                else
                {
                    Label1.Text = "You're email and password is incorrect";
                    Label1.ForeColor = System.Drawing.Color.Red;

                }
            }
            if (RadioButtonList1.SelectedItem.Text == "Customer")
            {
                conn.Open();
                string sql = "SELECT * from customer_information where email='" + email.Text + "' and cpassword='" + password.Text + "'";

                adapter = new SqlDataAdapter(sql, conn);
                //fill the dataset
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["email"] = email.Text;
                    Session["id"] = dt.Rows[0]["cid"].ToString();
                    Response.Redirect("users/viewcategory.aspx");

                }
                else
                {
                    Label1.Text = "You're email and password is incorrect";
                    Label1.ForeColor = System.Drawing.Color.Red;

                }
            }
            //if (RadioButtonList1.SelectedItem.Text == "Seller")
            //{
            //    conn.Open();
            //    string sql = "SELECT * from seller_information where semail='" + email.Text + "' and spassword='" + password.Text + "'";

            //    adapter = new SqlDataAdapter(sql, conn);
            //    //fill the dataset
            //    adapter.Fill(dt);
            //    if (dt.Rows.Count > 0)
            //    {
            //        Session["name"] = dt.Rows[0]["sname"].ToString();
            //        Session["email"] = email.Text;
            //        Session["id"] = dt.Rows[0]["sellerid"].ToString();
            //        Response.Redirect("seller/add_products.aspx");

            //    }
            //    else
            //    {
            //        Label1.Text = "You're email and password is incorrect";
            //        Label1.ForeColor = System.Drawing.Color.Red;

            //    }
            //}

        }
    }
}