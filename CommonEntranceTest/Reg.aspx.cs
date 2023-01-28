using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Configuration;


namespace CommonEntranceTest

{
    public partial class Reg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            get_max_id();
            Label20.Visible = false;
        }
        public void get_max_id()
        {
            int k = 201600001;
            try
            {
                con.Open();
                string qry = string.Format(@"select max(Studentid) from StdReg");
                SqlCommand cmd = new SqlCommand(qry, con);
                k = int.Parse(cmd.ExecuteScalar().ToString());
                con.Close();
            }
            catch
            {
            }
            finally
            {
                Label20.Text = (k + 1).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //int id=201604;



            SqlCommand cmd = new SqlCommand("insert into StdReg values('" + txt_name.Text + "','" + txt_lname.Text + "','" + txt_add.Text + "','" + txt_city.Text + "','" + txt_state.Text + "','" + rd_gender.SelectedItem.Text + "','" + txt_dob.Text + "','" + txt_sregnum.Text + "','" + txt_sper.Text + "','" + drp_gd.SelectedItem.Text + "','" + txt_gp.Text + "','" + drp_gy.SelectedItem.Text + "','" + txt_clgname.Text + "','" + drp_uni.Text + "','" + txt_pn.Text + "','" + txt_email.Text + "','" + txt_cpswd.Text + "','" + Label20.Text + "')", con);
            int r = 0;
            con.Open();
            r = cmd.ExecuteNonQuery();
            if (r > 0)
            {
               
                string subject = "login id";
                string message = "your login id is " + Label20.Text + " and Your Password is =" + txt_cpswd.Text + "";
                if (GmailSender.SendMail("dummymail20000@gmail.com", "welcometoindia", txt_email.Text, subject, message))
                {


                    //ClientScript.RegisterClientScriptBlock(Page, typeof(Page), "clientscript", "alert ('Registration successfully')", true);
                    //Label19.Text = "registration successfully";
                    //id=id++;
                    Response.Write("<script>alert('Registration successfully')</script>");
                    txt_add.Text = " ";
                    txt_city.Text = " ";
                    txt_clgname.Text = " ";
                    txt_cpswd.Text = " ";
                    txt_dob.Text = " ";
                    txt_email.Text = " ";
                    txt_gp.Text = " ";
                    txt_lname.Text = " ";
                    txt_name.Text = " ";
                    txt_pn.Text = " ";
                    txt_sper.Text = " ";
                    txt_sregnum.Text = " ";
                    txt_state.Text = " ";
                    Label20.Text = " ";
                }
                
            }
            else
            {
                Label19.Text = "Please try again";
                
                // ClientScript.RegisterClientScriptBlock(Page, typeof(Page), "clientscript", "alert ('Please try again')", true);
            }
        }
    }
}