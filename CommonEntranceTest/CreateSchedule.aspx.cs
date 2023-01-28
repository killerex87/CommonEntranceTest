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
    public partial class CreateShedule : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionstring"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Schedule values('" +DropDownList1.SelectedItem.Text + "','"+DropDownList2.SelectedItem.Text +"','"+TextBox1.Text +"','"+TextBox2.Text +"','"+TextBox3.Text +"')", con);
            int r = 0;
            con.Open();
            r = cmd.ExecuteNonQuery();
            if (r > 0)
            {
                Response.Write("<script>alert('Schedule created')</script>");
               // RegisterStartupScript("msg", "<script>alert('Questions added successfully')</script");
            }
            else { }

        }
    }
}
