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
    public partial class StudLogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionString"].ConnectionString);

            SqlCommand cmd = new SqlCommand("select * from StdReg where Studentid='" + TextBox1.Text + "' and Choose_Password='" + TextBox2.Text + "' ", con);
            SqlDataReader rd;
            con.Open();
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                String  id = rd.GetString(17);
                Session["id"] = id;
                String name = rd.GetString(0);
                Session["name"]=name;
                String lname = rd.GetString(1);
                Session["lname"] = lname;
                Response.Redirect("StdOnline_Welcome.aspx");
            }
            else
            {
                Label3.Text = "Invalid Login details";
            }
            con.Close();
        }

        

    }
}
