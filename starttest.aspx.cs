using System;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Timers;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.IO;

public partial class admin_starttest : System.Web.UI.Page
{
    string userid = "";
    SqlConnection con = new SqlConnection(db_connection1.dbcon());
    SqlCommand comm = new SqlCommand();
    static DataSet ds = new DataSet();
    public string img = "",rank="";
    static int index = 0;
    static int answer = 0;
    static int wrong = 0;
    static int skip = 0;
    static int incorrect = 0;
    public string que = "";
    public int timer=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            gettime();
           
            Label5.Text = Request.QueryString["course"];
            ds.Clear();
            index = 0;
            answer = 0;
          
            string insert_query = "SELECT TOP "+que+" * FROM SITM_quiz where lang='" + Request.QueryString["course"] + "'  ORDER BY newid()";
            SqlDataAdapter da = new SqlDataAdapter(insert_query, con);
            da.Fill(ds);
            Label1.Text = ds.Tables[0].Rows[0]["que"].ToString();
            RadioButton1.Text = ds.Tables[0].Rows[0]["op1"].ToString();
            RadioButton2.Text = ds.Tables[0].Rows[0]["op2"].ToString();
            RadioButton3.Text = ds.Tables[0].Rows[0]["op3"].ToString();
            RadioButton4.Text = ds.Tables[0].Rows[0]["op4"].ToString();
            MultiView1.ActiveViewIndex = 0;

            Session["timeout"] = DateTime.Now.AddMinutes(timer).ToString();
            Panel2.Visible = false;
            pnlrank.Visible = false;
            lblque.Text ="No of Question "+ que;
           
        }
      
       
    
    }
    protected void timer1_tick(object sender, EventArgs e)
    {
        if (0 > DateTime.Compare(DateTime.Now, DateTime.Parse(Session["timeout"].ToString())))
        {
            lblTimer.Text = string.Format("Time Left: 00:{0}:{1}", ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString(), ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).Seconds).ToString());
        }
        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) as que from SITM_quiz where lang='" + Request.QueryString["course"] + "'", con);
            //OleDbCommand cmd = new OleDbCommand("Select Staff_Name from Staff_Detail", con);
            SqlDataReader dr = cmd.ExecuteReader();
            // OleDbDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                que = dr[0].ToString();
                //School.Items.Add(dr[0].ToString());
            }
            con.Close();
            incorrect = Convert.ToInt32(que) - answer;
           // timer1.Enabled = true;
            btnSubmit.Text = "Submit";
            Response.Write("<script>alert('You have  been submitted successfully');</script>");
           
            MultiView1.Visible = false;
            pnlrank.Visible = true;
            lblque.Text = "";
            txtcheck.Text = "done";
            Response.Redirect("Default.aspx");
            getresult();
            

        }
    }
    private void gettime()
    {
        try
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("select no_of_que,duration from SITM_test_paper where test_papet='" + Request.QueryString["course"] + "'", con);
            //OleDbCommand cmd = new OleDbCommand("Select Staff_Name from Staff_Detail", con);
            SqlDataReader dr = cmd.ExecuteReader();
            // OleDbDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                
                que = dr[0].ToString();
                timer = Convert.ToInt32(dr[1].ToString());
                //School.Items.Add(dr[0].ToString());
            }
            con.Close();
        }
        catch (Exception ex) { }
        //{ MessageBox.Show(ex.Message); }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        getresult();

    }
    public void getresult()
    {
        try
        {
            if (btnSubmit.Text == "Next")
            {
                string user_ans = "";
                if (RadioButton1.Checked == true)
                {
                    user_ans = "1";
                }
                else if (RadioButton2.Checked == true)
                {
                    user_ans = "2";
                }
                else if (RadioButton3.Checked == true)
                {
                    user_ans = "3";
                }
                else if (RadioButton4.Checked == true)
                {
                    user_ans = "4";
                }
                string cor_ans = ds.Tables[0].Rows[index]["ans"].ToString();
                if (user_ans == cor_ans)
                {
                    answer++;
                }
                else
                {
                    wrong++;
                }
                index++;

                Label1.Text = ds.Tables[0].Rows[index]["que"].ToString();
                RadioButton1.Text = ds.Tables[0].Rows[index]["op1"].ToString();
                RadioButton2.Text = ds.Tables[0].Rows[index]["op2"].ToString();
                RadioButton3.Text = ds.Tables[0].Rows[index]["op3"].ToString();
                RadioButton4.Text = ds.Tables[0].Rows[index]["op4"].ToString();
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
                RadioButton3.Checked = false;
                RadioButton4.Checked = false;
                btnSkip.Enabled = true;

                if (ds.Tables[0].Rows.Count == index + 1)
                {
                    btnSubmit.Text = "Submit";
                    //Button2.Visible = false;
                }

            }
            else
            {
                timer = 0;
                Session["timeout"] = DateTime.Now.AddMinutes(timer).ToString();
                string user_ans = "";
                if (RadioButton1.Checked == true)
                {
                    user_ans = "1";
                }
                else if (RadioButton2.Checked == true)
                {
                    user_ans = "2";
                }
                else if (RadioButton3.Checked == true)
                {
                    user_ans = "3";
                }
                else if (RadioButton4.Checked == true)
                {
                    user_ans = "4";
                }
                string cor_ans = ds.Tables[0].Rows[index]["ans"].ToString();
                if (user_ans == cor_ans)
                {
                    answer++;
                }
                else
                {
                    wrong++;
                }
                con.Open();
                SqlCommand cmd = new SqlCommand("select count(*) as que from SITM_quiz where lang='" + Request.QueryString["course"] + "'", con);
                //OleDbCommand cmd = new OleDbCommand("Select Staff_Name from Staff_Detail", con);
                SqlDataReader dr = cmd.ExecuteReader();
                // OleDbDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    que = dr[0].ToString();
                    //School.Items.Add(dr[0].ToString());
                }
                con.Close();
               
                Panel2.Visible = true;
                incorrect = Convert.ToInt32(que) - answer;
                Label2.ForeColor = System.Drawing.Color.Green;
                Label3.ForeColor = System.Drawing.Color.Red;
                //  Label4.ForeColor = System.Drawing.Color.Blue;
                Label2.Text = "Correct Ans = " + answer.ToString();
                Label3.Text = "Incorrect Ans = " + incorrect.ToString();
                // Label4.Text = "Skipped Question = " + skip.ToString();
                MultiView1.Visible = false;
                btnTryAgain.Visible = true;
                btnBackToHomePage.Visible = true;
                btnSubmit.Enabled = false;
                lblTimer.Text = "Your Result";
                img = (answer * 100 / Convert.ToInt32(que)).ToString();
                int per = Convert.ToInt32(img);
                pnlrank.Visible = true;
                if (per >= 60)
                {
                    rank = "images/first.jpg";
                }
                else if (per >= 52)
                {
                    rank = "images/second.jpg";

                }
                else if (per >= 33)
                {
                    rank = "images/third.png";

                }
                else
                {
                    rank = "images/fail.png";

                }
                // progressbar.Style["width"] = "10";
                //  progressbar.Style.Add("width", img);


                // progressbar.Attributes.Add("style", "width:"+img+"%");
                //  progressbar.Attributes.CssStyle.Add(HtmlTextWriterStyle.Color, "red");

                index = 0;
                answer = 0;
                skip = 0;
                wrong = 0;
            }
        }
        catch (Exception ex) { }
    }
    protected void btnSkip_Click(object sender, EventArgs e)
    {
        if (index > 0)
        {
            index--;

            Label1.Text = ds.Tables[0].Rows[index]["que"].ToString();
            RadioButton1.Text = ds.Tables[0].Rows[index]["op1"].ToString();
            RadioButton2.Text = ds.Tables[0].Rows[index]["op2"].ToString();
            RadioButton3.Text = ds.Tables[0].Rows[index]["op3"].ToString();
            RadioButton4.Text = ds.Tables[0].Rows[index]["op4"].ToString();
         
            btnSkip.Enabled = true;
        }
        
    }
    protected void txtcheck_TextChanged(object sender, EventArgs e)
    {
        getresult();
    }
}