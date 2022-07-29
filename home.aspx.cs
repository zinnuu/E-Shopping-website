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
    public partial class home : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }

        }
        private void Bind()
        {

                SqlCommand cmd = new SqlCommand("select * from products", conn);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}