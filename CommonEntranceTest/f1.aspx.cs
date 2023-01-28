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
    public partial class f1 : System.Web.UI.Page
    {
        //static int i = 0;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionstring"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!ScriptManager1.IsInAsyncPostBack)

                Session["timeout"] = DateTime.Now.AddMinutes(60).ToString();
           
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (0 > DateTime.Compare(DateTime.Now, DateTime.Parse(Session["timeout"].ToString())))
            {
                Label1.Text = string.Format("Time Left: 00:{0}:{1}", ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString(), ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).Seconds).ToString());
            }
            else
            {
                Timer1.Enabled = true;
                 Response.Write("<script>window.open('logout.aspx','fm');</script>");
                

            }
        }
        


    }
}