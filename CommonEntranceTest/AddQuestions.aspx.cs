using System;
using System.Data.SqlClient;
using System.Configuration;
namespace CommonEntranceTest
{
    public partial class AddQuestions : System.Web.UI.Page
    {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["StdRegConnectionstring"].ConnectionString);
            protected void Page_Load(object sender, EventArgs e)
            {
                gm();
                Label8.Visible = false;
            }
            public void gm()
            {
                int k = 00;
                try
                {
                    conn.Open();
                    string qry = string.Format(@"select max(Sl_no) from Questions");
                    SqlCommand cmd = new SqlCommand(qry, conn);
                    k = int.Parse(cmd.ExecuteScalar().ToString());
                    
                }
                catch
                {
                }
                finally {
                    Label8.Text = (k + 1).ToString();
                }
                conn.Close();
            }
            protected void Button1_Click1(object sender, EventArgs e)
            {
                SqlCommand cmd = new SqlCommand(" insert into Questions values ('" + Label8.Text + "','" + txt_qus.Text + "','" + txt_adqus.Text + "','" + txt_opta.Text + "','" + txt_optb.Text + "','" + txt_optc.Text + "','" + txt_optd.Text + "','" + dd.SelectedItem.Text + "')", conn);
                int r = 0;
                conn.Open();
                r = cmd.ExecuteNonQuery();
                if (r > 0)
                {
                    Label9.Text = " added";
                    txt_qus.Text = " ";
                    txt_adqus.Text = " ";
                    txt_opta.Text = " ";
                    txt_optb.Text = " ";
                    txt_optc.Text = " ";
                    txt_optd.Text = " ";
                   

                    //RegisterStartupScript("msg", "<script>alert('Questions added successfully')</script");
                }
                else
                {
                    Label9.Text = " invalid details";
                }
                conn.Close();
            }
        }
    }
