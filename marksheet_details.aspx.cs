using System;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.IO;


public partial class marksheet_details : System.Web.UI.Page
{
    string userid = "";
    SqlConnection con = new SqlConnection(db_connection1.dbcon());
    public string roll = "";
    SqlDataReader dr;
    SqlCommand cmd;
    SqlDataAdapter da;
    public string centre_code = "", brnreg = "", centre_place = "", centre_name = "", logo = "", autho_person = "", autho_mobile = "", address = "", email = "", website = "";
    public string regno = "", stuname = "", dob = "", father = "",mother="", course = "", photo = "", cert_id = "", issue_date = "", dur = "";
    public string result = "", totalmaxmark = "", totalobtmarks = "", grade = "", percent = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       
        //getbranch_details();

        getstudent_details();
        getmarks_details();
        getmarks();

    }
   

    //private void getbranch_details()
    //{
    //    try
    //    {

    //        if (con.State == ConnectionState.Closed)
    //        {
    //            con.Open();
    //        }

    //        SqlCommand cmd = new SqlCommand("select * from SITM_branch_details where centre_code='" + centre_code + "'", con);
    //        //OleDbCommand cmd = new OleDbCommand("Select Staff_Name from Staff_Detail", con);
    //        SqlDataReader dr = cmd.ExecuteReader();
    //        // OleDbDataReader dr = cmd.ExecuteReader();
    //        while (dr.Read())
    //        {
    //            centre_place = dr[2].ToString();
    //            centre_name = dr[3].ToString();
    //            autho_person = dr[4].ToString();
    //            autho_mobile = dr[5].ToString();
    //            address = dr[6].ToString();
    //            email = dr[7].ToString();
    //            website = dr[8].ToString();
    //            logo = dr[9].ToString();
    //            brnreg = dr[10].ToString();


    //        }
    //        con.Close();
    //    }
    //    catch (Exception ex) { }
    //    //{ MessageBox.Show(ex.Message); }
    //}
    private void getstudent_details()
    {
        try
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT     dbo.SITM_admission.application_no, dbo.SITM_admission.Student_name, dbo.SITM_admission.Date_Of_Bith, dbo.SITM_admission.Father_Name, dbo.SITM_admission.Mother_Name, dbo.SITM_course.course_name, dbo.SITM_admission.photo, dbo.SITM_certificate.certificate_id, CONVERT(VARCHAR(10), dbo.SITM_certificate.issue_date, 103) AS issue_date, dbo.SITM_certificate.duration, dbo.SITM_branch_details.centre_code, dbo.SITM_branch_details.centre_name, dbo.SITM_admission.Selected_Course " +
" FROM         dbo.SITM_certificate INNER JOIN dbo.SITM_admission ON dbo.SITM_certificate.reg_no = dbo.SITM_admission.application_no INNER JOIN dbo.SITM_course ON dbo.SITM_admission.Selected_Course = dbo.SITM_course.subject_id INNER JOIN dbo.SITM_branch_details ON dbo.SITM_admission.branch_code = dbo.SITM_branch_details.centre_code " +
"GROUP BY dbo.SITM_admission.application_no, dbo.SITM_admission.Student_name, dbo.SITM_admission.Date_Of_Bith, dbo.SITM_admission.Father_Name, dbo.SITM_admission.Mother_Name,  dbo.SITM_admission.Selected_Course, dbo.SITM_certificate.certificate_id, dbo.SITM_admission.photo, dbo.SITM_admission.branch_code, dbo.SITM_certificate.issue_date,  dbo.SITM_certificate.duration, dbo.SITM_course.course_name, dbo.SITM_branch_details.centre_code, dbo.SITM_branch_details.centre_name" +
                      " HAVING       (dbo.SITM_admission.application_no = '" + Request.QueryString["application_no"].ToString() + "')", con);
            //OleDbCommand cmd = new OleDbCommand("Select Staff_Name from Staff_Detail", con);
            SqlDataReader dr = cmd.ExecuteReader();
            // OleDbDataReader dr = cmd.ExecuteReader();
            string courseId = "";
            while (dr.Read())
            {
                regno = dr[0].ToString();
                stuname = dr[1].ToString();
                dob = dr[2].ToString();
                father = dr[3].ToString();
                mother = dr[4].ToString();
                course = dr[5].ToString();
                photo = dr[6].ToString();
                cert_id = dr[7].ToString();
                issue_date = dr[8].ToString();
                dur = dr[9].ToString();
                centre_code = dr[10].ToString();
                centre_name = dr[11].ToString();
                courseId = dr["Selected_Course"].ToString();

                //School.Items.Add(dr[0].ToString());
            }
            if (courseId == "25")
            {
                Response.Redirect("MarksheetTyping.aspx?application_no=" + regno + "");
            }
            con.Close();
        }
        catch (Exception ex) { }
        //{ MessageBox.Show(ex.Message); }
    }
    private void getmarks_details()
    {
        try
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT     subject, objmarks, maxmarks FROM  dbo.SITM_certificate WHERE     (reg_no =  '" + Request.QueryString["application_no"].ToString() + "')", con);
            //OleDbCommand cmd = new OleDbCommand("Select Staff_Name from Staff_Detail", con);
            //SqlDataReader dr = cmd.ExecuteReader();
            // OleDbDataReader dr = cmd.ExecuteReader();
            da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            rptr.DataSource = ds;

            rptr.DataBind();
            con.Close();
        }
        catch (Exception ex) { }
        //{ MessageBox.Show(ex.Message); }
    }

    public void getmarks()
    {
        try
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT     SUM(objmarks) AS totalobt, SUM(maxmarks) AS totalmax FROM         dbo.SITM_certificate WHERE     (reg_no = '" + Request.QueryString["application_no"] + "')", con);
            //OleDbCommand cmd = new OleDbCommand("Select Staff_Name from Staff_Detail", con);
            SqlDataReader dr = cmd.ExecuteReader();
            // OleDbDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                totalobtmarks = dr[0].ToString();
                totalmaxmark = dr[1].ToString();


                //School.Items.Add(dr[0].ToString());
            }
            con.Close();
            getpercent();
            getresult();
            getgrade();
        }
        catch (Exception ex) { }
        //{ MessageBox.Show(ex.Message); }
    }
    public void getpercent()
    {

        double a = Math.Round(100 * Convert.ToDouble(totalobtmarks) / Convert.ToDouble(totalmaxmark), 2); ;

        percent = a.ToString();
    }
    public void getgrade()
    {
        double a = Convert.ToDouble(percent);

        if (a >= 85)
        {
            grade = "A";
        }
        else if (a >= 70)
        {
            grade = "B";
        }
        else if (a >= 55)
        {
            grade = "C";
        }
        else if (a >= 40)
        {
            grade = "D";
        }
        else
        {
            grade = "Failure";
        }


    }
    public void getresult()
    {
        double a = Convert.ToDouble(percent);
        if (a >= 60)
        {
            result = "First";
        }
        else if (a >= 52)
        {
            result = "Second";
        }
        else if (a >= 33)
        {
            result = "Thirty";
        }
        else
        {
            result = "Fail";
        }



    }
}