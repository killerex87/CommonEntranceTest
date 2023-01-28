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
    public partial class Stdonline_intro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionString"].ConnectionString);

            SqlCommand cmd = new SqlCommand("select * from AdminProceed where status='Enable' ", con);
            SqlDataReader rd;
            con.Open();
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                string link=rd.GetString (0);
             
                Response.Redirect(link);
            }
            else
            {
                Response.Write("<script>alert('please wait')</script>");
            }
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        
    }
}