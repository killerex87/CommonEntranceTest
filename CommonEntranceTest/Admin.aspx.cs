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
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddQuestions.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditQuestion.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateSchedule.aspx"); 
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewSchedule.aspx");
        }

        protected void Addlink_Click(object sender, EventArgs e)
        {

        }

        protected void Button12_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("insert into AdminProceed values('"+TextBox1.Text +"','"+DropDownList1.SelectedItem.Text +"') ", con);
            int rd = 0;
            con.Open();
            rd = cmd.ExecuteNonQuery();
            if (rd > 0)
            {
                Response.Write("<script>alert('insert successfully')</script>");
            }
            else
            {
                
            }
            con.Close();

        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update AdminProceed set Status='" + DropDownList1.SelectedItem.Text  + "' where Link='"+TextBox1.Text +"' ", con);
            int rd = 0;
            con.Open();
            rd = cmd.ExecuteNonQuery();
            if (rd > 0)
            {
                Response.Write("<script>alert('Proceed successfully')</script>");
            }
            else
            {

            }
            con.Close();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Result.aspx");
        }

        protected void Button12_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}