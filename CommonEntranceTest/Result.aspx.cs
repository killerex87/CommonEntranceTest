using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace CommonEntranceTest
{
    public partial class Result : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionString"].ConnectionString);
       // SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionString"].ConnectionString);
        SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           // string s = "SELECT distinct Std_id,Student_name,Student_lname FROM OnlineTest";
           // string s1 = "SELECT COUNT(Choosed_option) FROM OnlineTest group by Std_id";
            string s2 = "SELECT Std_id,Student_name,COUNT(tresult) as res FROM OnlineTest where tresult=1 group by Std_id,Student_name";
            
            //SqlDataReader rd;
            //SqlCommand cmd = new SqlCommand(s, con);
            //SqlCommand cmd1 = new SqlCommand(s1, con1);
            SqlCommand cmd2 = new SqlCommand(s2, con2);
            //con.Open();
            //con1.Open();
            con2.Open();
           // rd = cmd2.ExecuteReader();
           // int k = int.Parse(cmd1.ExecuteScalar().ToString());
            cmd2.ExecuteNonQuery();
            DataTable dt=new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            da.Fill(dt);
            rlist.DataSource = dt;
            rlist.DataBind();

            //con.Close();
            //con1.Close();
            con2.Close();
        }
    }
}