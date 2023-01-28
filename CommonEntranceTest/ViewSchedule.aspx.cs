using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace CommonEntranceTest
{
    public partial class Vwschedule : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.bd();
            }
        }
        private void bd()
        {
            DataTable dt = new DataTable();

            string s = "SELECT dbo.StdReg.Studentid, dbo.StdReg.Name, dbo.StdReg.LastName, dbo.Schedule.Date, dbo.Schedule.Time_frm, dbo.Schedule.Time_to FROM dbo.StdReg CROSS JOIN dbo.Schedule";
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataAdapter sda = new SqlDataAdapter();
            con.Open();
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), "printGrid", "PrintPage();", true);
        }
    }
}