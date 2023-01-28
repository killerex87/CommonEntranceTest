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
    public partial class StdForgetPassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionstring"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update StdReg set Choose_Password='" + TextBox3.Text + "' where SSLC_Registration_Number='" + TextBox2.Text + "' ", con);
            int rd = 0;
            con.Open();
            rd = cmd.ExecuteNonQuery();
            if (rd > 0)
            {
                Response.Write("<script>alert('Your password changed successfully')</script>");
                TextBox1.Text = " ";
                TextBox2.Text = " ";
                TextBox3.Text = " ";
                TextBox4.Text = " ";
            }
            else
            {
                Response.Write("<script>alert('Please try again')</script>");
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudLogIn.aspx");
        }
    }
}