using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Timers;
using System.Text;
using System.Drawing;

namespace CommonEntranceTest
{
   
    public partial class WebForm3 : System.Web.UI.Page
    {
      
        static int i=0;
      
        
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionstring"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
           fname.Text = Session["name"].ToString();
          lname.Text = Session["lname"].ToString();
            reg.Text = Session["id"].ToString();
            if (!ScriptManager1.IsInAsyncPostBack)
            {

            }
               
            Button1.Visible = true;
            if (!IsPostBack)
            {
                Session["timeout"] = DateTime.Now.AddMinutes(60).ToString();
                bind();
            }
           
        }
        

        protected void bind()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionstring"].ConnectionString);
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Questions", conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (i <= ds.Tables[0].Rows.Count - 1)
            {
                qno.Text = ds.Tables[0].Rows[i]["Sl_no"].ToString();
                qus.Text = ds.Tables[0].Rows[i]["question"].ToString();
                addqus.Text = ds.Tables[0].Rows[i]["ad_question"].ToString();
                opta.Text = ds.Tables[0].Rows[i]["OptionA"].ToString();
                optb.Text = ds.Tables[0].Rows[i]["OptionB"].ToString();
                optc.Text = ds.Tables[0].Rows[i]["Optionc"].ToString();
                optd.Text = ds.Tables[0].Rows[i]["OptionD"].ToString();
                CorrectAnswer.Text = ds.Tables[0].Rows[i]["CorrectAnswer"].ToString();
            }
            else
            { }
            conn.Close();
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            int rs = 0,res=0;
            
            String id = Session["id"].ToString();
            String name = Session["name"].ToString();
            String lname = Session["lname"].ToString();
            string options = string.Empty;
            String co=CorrectAnswer.Text;
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
            if (co == options)
            {
                res = 1;
            }


            SqlCommand cmd = new SqlCommand(" insert into OnlineTest values ('"+id+ "','"+name+"','"+lname+"','"+qno.Text  +"','"+CorrectAnswer.Text  +"','"+ options + "','"+res+"')", conn);

            conn.Open();
            rs = cmd.ExecuteNonQuery();
            if (rs > 0)
            {
                Response.Write("<script>alert('Your answer is submitted')</script>");
                String qn = "q" + qno.Text;
                Qsetback(qn);
             
                
            }
            else
            {

            }
          //  Response.Write("<script>alert('Your answer is submitted')</script>");
        }

         public void Qsetback(string qn)
        {
            if (qn == "q1")
            {
                q1.BackColor = Color.Green;
            }
            else if (qn == "q2")
            {
                q2.BackColor = Color.Green;
            }
            else if (qn == "q3")
            {
                q3.BackColor = Color.Green;
            }
            else if (qn == "q4")
            {
                q4.BackColor = Color.Green;
            }
            else if (qn == "q5")
            {
                q5.BackColor = Color.Green;
            }
            else if (qn == "q6")
            {
                q6.BackColor = Color.Green;
            }
            else if (qn == "q7")
            {
                q7.BackColor = Color.Green;
            }
            else if (qn == "q8")
            {
                q8.BackColor = Color.Green;
            }
            else if (qn == "q9")
            {
                q9.BackColor = Color.Green;

            }
            else if (qn == "q10")
            {
                q10.BackColor = Color.Green;
            }
            else if (qn == "q11")
            {
                q11.BackColor = Color.Green;
            }
            else if (qn == "q12")
            {
                q12.BackColor = Color.Green;
            }
            else if (qn == "q13")
            {
                q13.BackColor = Color.Green;
            }
            else if (qn == "q14")
            {
                q14.BackColor = Color.Green;
            }
            else if (qn == "q15")
            {
                q15.BackColor = Color.Green;
            }
            else if (qn == "q16")
            {
                q16.BackColor = Color.Green;
            }
            else if (qn == "q17")
            {
                q17.BackColor = Color.Green;
            }
            else if (qn == "q18")
            {
                q18.BackColor = Color.Green;
            }
            else if (qn == "q19")
            {
                q19.BackColor = Color.Green;
            }
            else if (qn == "q20")
            {
                q20.BackColor = Color.Green;
            }
            else if (qn == "q21")
            {
                q21.BackColor = Color.Green;
            }
            else if (qn == "q22")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q23")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q4")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q25")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q26")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q27")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q28")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q29")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q30")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "31")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q32")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q33")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q34")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q35")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "36")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q37")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q38")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q39")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q40")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q41")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q42")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q43")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q44")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q45")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q46")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q47")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q48")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q49")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q50")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q51")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q52")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q53")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q54")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q54")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q55")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q56")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q57")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q58")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q59")
            {
                q22.BackColor = Color.Green;
            }
            else if (qn == "q60")
            {
                q22.BackColor = Color.Green;
            }
        }

        
       
        protected void Button3_Click(object sender, EventArgs e)
        {
            rd_opta.Checked = false;
            rd_optb.Checked = false;
            rd_optc.Checked = false;
            rd_optd.Checked = false;
            i++;
            bind();

        }

        protected void q1_Click1(object sender, EventArgs e)
        {
            String c = "1";
            bqus(c);
           
        }
            public void bqus(String ch )
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionString"].ConnectionString);

            SqlCommand cmd = new SqlCommand("select * from Questions where Sl_no='"+ch+"'", con);
            SqlDataReader rd;
            con.Open();
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                int qn = rd.GetInt32(0);
               string q= rd.GetString(1);
               string adq = rd.GetString(2);
               string opa = rd.GetString(3);
               string opb = rd.GetString(4);
               string opc = rd.GetString(5);
               string opd = rd.GetString(6);
               string cans = rd.GetString(7);
               qno.Text = qn.ToString ();
                qus.Text = q;
               addqus.Text = adq;
               opta.Text = opa;
               optb.Text = opb;
               optc.Text = opc;
               optd.Text = opd;
               CorrectAnswer.Text = cans;
            }
           
            con.Close();
        }

            //private int Int32(int p)
            //{
            //    throw new NotImplementedException();
            //}

            protected void Button1_Click1(object sender, EventArgs e)
            {
                rd_opta.Checked = false;
                rd_optb.Checked = false;
                rd_optc.Checked = false;
                rd_optd.Checked = false;
                if (i > 0 )
                {

                    i--;
                    bind();
                }
                else
                {
                    
                    Response.Write("<script>alert('This is your first question')</script>");
                    Button1.Visible = false;
                }
                

            }

            protected void q2_Click(object sender, EventArgs e)
            {
                String c = "2";
                bqus(c);
               
                    
            }

            protected void q3_Click(object sender, EventArgs e)
            {
                String c = "3";
                bqus(c);
            }

            protected void q4_Click(object sender, EventArgs e)
            {
                String c = "4";
                bqus(c);
            }

            protected void q5_Click(object sender, EventArgs e)
            {
                String c = "5";
                bqus(c);
            }

            protected void q6_Click(object sender, EventArgs e)
            {
                String c = "6";
                bqus(c);
            }

            protected void q7_Click(object sender, EventArgs e)
            {
                String c = "7";
                bqus(c);
            }

            protected void q8_Click(object sender, EventArgs e)
            {
                String c = "8";
                bqus(c);
            }

            protected void q9_Click(object sender, EventArgs e)
            {
                String c = "9";
                bqus(c);
            }

            protected void q10_Click(object sender, EventArgs e)
            {
                String c = "10";
                bqus(c);
            }

            protected void q11_Click(object sender, EventArgs e)
            {
                String c = "11";
                bqus(c);
            }

            protected void q12_Click(object sender, EventArgs e)
            {
                String c = "12";
                bqus(c);
            }

            protected void q13_Click(object sender, EventArgs e)
            {
                String c = "13";
                bqus(c);
            }

            protected void q14_Click(object sender, EventArgs e)
            {
                String c = "14";
                bqus(c);
            }

            protected void q15_Click(object sender, EventArgs e)
            {
                String c = "15";
                bqus(c);
            }

            protected void q16_Click(object sender, EventArgs e)
            {
                String c = "16";
                bqus(c);
            }

            protected void q17_Click(object sender, EventArgs e)
            {
                String c = "17";
                bqus(c);
            }

            protected void q18_Click(object sender, EventArgs e)
            {
                String c = "18";
                bqus(c);
            }

            protected void q19_Click(object sender, EventArgs e)
            {
                String c = "19";
                bqus(c);
            }

            protected void q20_Click(object sender, EventArgs e)
            {
                String c = "20";
                bqus(c);
            }

            protected void q21_Click(object sender, EventArgs e)
            {
                String c = "21";
                bqus(c);
            }

            protected void q22_Click(object sender, EventArgs e)
            {
                String c = "22";
                bqus(c);
            }

            protected void q23_Click(object sender, EventArgs e)
            {
                String c = "23";
                bqus(c);
            }

            protected void q24_Click(object sender, EventArgs e)
            {
                String c = "24";
                bqus(c);
            }

            protected void q25_Click(object sender, EventArgs e)
            {
                String c = "25";
                bqus(c);
            }

            protected void q26_Click(object sender, EventArgs e)
            {
                String c = "26";
                bqus(c);
            }

            protected void q27_Click(object sender, EventArgs e)
            {
                String c = "27";
                bqus(c);
            }

            protected void q28_Click(object sender, EventArgs e)
            {
                String c = "28";
                bqus(c);
            }

            protected void q29_Click(object sender, EventArgs e)
            {
                String c = "29";
                bqus(c);
            }

            protected void q30_Click(object sender, EventArgs e)
            {
                String c = "30";
                bqus(c);
            }

            protected void q31_Click(object sender, EventArgs e)
            {
                String c = "31";
                bqus(c);
            }

            protected void q32_Click(object sender, EventArgs e)
            {
                String c = "32";
                bqus(c);
            }

            protected void q33_Click(object sender, EventArgs e)
            {
                String c = "33";
                bqus(c);
            }

            protected void q34_Click(object sender, EventArgs e)
            {
                String c = "34";
                bqus(c);
            }

            protected void q35_Click(object sender, EventArgs e)
            {
                String c = "35";
                bqus(c);
            }

            protected void q36_Click(object sender, EventArgs e)
            {
                String c = "36";
                bqus(c);
            }

            protected void q37_Click(object sender, EventArgs e)
            {
                String c = "37";
                bqus(c);
            }

            protected void q38_Click(object sender, EventArgs e)
            {
                String c = "38";
                bqus(c);
            }

            protected void q39_Click(object sender, EventArgs e)
            {
                String c = "39";
                bqus(c);
            }

            protected void q40_Click(object sender, EventArgs e)
            {
                String c = "40";
                bqus(c);
            }

            protected void q41_Click(object sender, EventArgs e)
            
            {
                String c = "41";
                bqus(c);

            }

            protected void q42_Click(object sender, EventArgs e)
            {
                String c = "42";
                bqus(c);
            }

            protected void q43_Click(object sender, EventArgs e)
            {
                String c = "43";
                bqus(c);
            }

            protected void q44_Click(object sender, EventArgs e)
            {
                String c = "44";
                bqus(c);
            }

            protected void q45_Click(object sender, EventArgs e)
            {
                String c = "45";
                bqus(c);
            }

            protected void q46_Click(object sender, EventArgs e)
            {
                String c = "46";
                bqus(c);
            }

            protected void q47_Click(object sender, EventArgs e)
            {
                String c = "47";
                bqus(c);
            }

            protected void q48_Click(object sender, EventArgs e)
            {
                String c = "48";
                bqus(c);
            }

            protected void q49_Click(object sender, EventArgs e)
            {
                String c = "49";
                bqus(c);
            }

            protected void q50_Click(object sender, EventArgs e)
            {
                String c = "50";
                bqus(c);
            }

            protected void q51_Click(object sender, EventArgs e)
            {
                String c = "51";
                bqus(c);
            }

            protected void q52_Click(object sender, EventArgs e)
            {
                String c = "52";
                bqus(c);
            }

            protected void q53_Click(object sender, EventArgs e)
            {
                String c = "53";
                bqus(c);
            }

            protected void q54_Click(object sender, EventArgs e)
            {
                String c = "54";
                bqus(c);
            }

            protected void q55_Click(object sender, EventArgs e)
            {
                String c = "55";
                bqus(c);
            }

            protected void q56_Click(object sender, EventArgs e)
            {
                String c = "56";
                bqus(c);
            }

            protected void q57_Click(object sender, EventArgs e)
            {
                String c = "57";
                bqus(c);
            }

            protected void q58_Click(object sender, EventArgs e)
            {
                String c = "58";
                bqus(c);
            }

            protected void q59_Click(object sender, EventArgs e)
            {
                String c = "59";
                bqus(c);
            }

            protected void q60_Click(object sender, EventArgs e)
            {
                String c = "60";
                bqus(c);
            }

            protected void q1_Click(object sender, EventArgs e)
            {
                String c = "1";
                bqus(c);
            }

            protected void Button4_Click(object sender, EventArgs e)
            {
                Response.Write("<script>alert('Thank you for taking the session. Please logout')</script>");
                Response.Write("<script>window.location='logout.aspx'</script>");
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
                    Response.Redirect("Home.aspx");

                }
            }

           

       

        
    }
}