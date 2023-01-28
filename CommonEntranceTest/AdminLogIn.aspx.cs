using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace CommonEntranceTest
{
    public partial class AdminLogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionString"].ConnectionString);

            SqlCommand cmd = new SqlCommand("select * from AdminLogIn where Admin='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' ", con);
            SqlDataReader rd;
            con.Open();
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Label3.Text = "Invalid Login details";
            }
            con.Close();

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {


        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}