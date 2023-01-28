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
    public partial class WebForm2 : System.Web.UI.Page
    {
        static int i=0;
       
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionstring"].ConnectionString);
    
    
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
             
            }
            
        }
        protected void bind()
        {
            //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionstring"].ConnectionString);
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Questions", conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (i <= ds.Tables[0].Rows.Count - 1)
            {
                qus.Text = ds.Tables[0].Rows[i]["Questions"].ToString();
                addqus.Text = ds.Tables[0].Rows[i]["AdditionalQuestion"].ToString();
                opta.Text = ds.Tables[0].Rows[i]["OptionA"].ToString();
                optb.Text = ds.Tables[0].Rows[i]["OptionB"].ToString();
                optc.Text = ds.Tables[0].Rows[i]["Optionc"].ToString();
                optd.Text = ds.Tables[0].Rows[i]["OptionD"].ToString();
            }
            else
            { }
            conn.Close();
        }
    
       
        protected void Button2_Click(object sender, EventArgs e)
        {
            int rs = 0;
            String id = Session["id"].ToString();
            String name = Session["name"].ToString();
            String lname = Session["lname"].ToString();
            string options = string.Empty;
            if (rd_opta.Checked)
            {
                options = "OptionA";
            }
            else if (rd_optb.Checked)
            {
                options = "OptionB";
            }
            else if (rd_optc.Checked)
            {
                options = "OptionC";
            }
            else if (rd_optd.Checked)
            {
                options = "OptionD";
            }

            SqlCommand cmd = new SqlCommand(" insert into OnleneTest values ('" + id + "','" + name + "','" + options + "')", conn);

            conn.Open();
            rs = cmd.ExecuteNonQuery();
            if (rs > 0)
            {

            }
            else
            {

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            i++;
            bind();

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
        }
    }
}