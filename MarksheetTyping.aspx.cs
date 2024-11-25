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

public partial class MarksheetTyping : System.Web.UI.Page
{
    string userid = "";
    SqlConnection con = new SqlConnection(db_connection1.dbcon());
    public string roll = "";
    SqlDataReader dr;
    SqlCommand cmd;
    SqlDataAdapter da;
    public string centre_code = "", brnreg = "", centre_place = "", centre_name = "", logo = "", autho_person = "", autho_mobile = "", address = "", email = "", website = "";
    public string regno = "", stuname = "", dob = "", father = "", mother = "", course = "", photo = "", cert_id = "", issue_date = "", dur = "";
    public string Hindi = "", English= "", FromDate= "", ToDate= "", Grade= "",GivenDate="";
    protected void Page_Load(object sender, EventArgs e)
    {

        //getbranch_details();

        getstudent_details();
       

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

            SqlCommand cmd = new SqlCommand("SELECT        dbo.SITM_certificate.certificate_id ,dbo.SITM_admission.photo, dbo.SITM_admission.roll, dbo.SITM_admission.Student_name, dbo.SITM_admission.Father_Name, dbo.SITM_course.course_name, dbo.SITM_certificate.duration, CONVERT(VARCHAR(10), " +
                       " dbo.SITM_certificate.issue_date, 101) AS issue_date, dbo.SITM_admission.Selected_Course, dbo.SITM_certificate.Hindi, dbo.SITM_certificate.English, dbo.SITM_certificate.FromDate, dbo.SITM_certificate.ToDate, " +
                       " dbo.SITM_certificate.Grade, dbo.SITM_certificate.GivenDate, dbo.SITM_certificate.Preparedby, dbo.SITM_certificate.Checkedby , dbo.SITM_branch_details.centre_name, dbo.SITM_admission.branch_code" +
" FROM            dbo.SITM_admission INNER JOIN dbo.SITM_certificate ON dbo.SITM_admission.application_no = dbo.SITM_certificate.reg_no INNER JOIN " +
                       " dbo.SITM_course ON dbo.SITM_admission.Selected_Course = dbo.SITM_course.subject_id INNER JOIN "+
                         " dbo.SITM_branch_details ON dbo.SITM_admission.branch_code = dbo.SITM_branch_details.centre_code" +
" WHERE(dbo.SITM_certificate.reg_no = '" + Request.QueryString["application_no"].ToString() + "') " +
" GROUP BY dbo.SITM_certificate.certificate_id, dbo.SITM_admission.Student_name, dbo.SITM_admission.Father_Name, dbo.SITM_admission.Selected_Course, dbo.SITM_certificate.duration, dbo.SITM_certificate.issue_date, " +
                       " dbo.SITM_course.course_name, dbo.SITM_certificate.Hindi, dbo.SITM_certificate.English, dbo.SITM_certificate.FromDate, dbo.SITM_certificate.ToDate, dbo.SITM_certificate.Grade, dbo.SITM_certificate.GivenDate, " +
                       " dbo.SITM_certificate.Preparedby, dbo.SITM_certificate.Checkedby ,dbo.SITM_admission.roll,dbo.SITM_admission.photo , dbo.SITM_branch_details.centre_name, dbo.SITM_admission.branch_code", con);
            //OleDbCommand cmd = new OleDbCommand("Select Staff_Name from Staff_Detail", con);
            SqlDataReader dr = cmd.ExecuteReader();
            // OleDbDataReader dr = cmd.ExecuteReader();
            string courseId = "";
            while (dr.Read())
            {
                regno = dr["roll"].ToString();
                stuname = dr["Student_name"].ToString();
             //   dob = dr[2].ToString();
                father = dr["Father_name"].ToString();
              //  mother = dr[4].ToString();
               
                photo = dr["photo"].ToString();
               // cert_id = dr[7].ToString();
                issue_date = dr["issue_date"].ToString();
               // dur = dr[9].ToString();
                centre_code = dr["branch_code"].ToString();
                centre_name = dr["centre_name"].ToString();
                courseId = dr["Selected_Course"].ToString();
                Hindi = dr["Hindi"].ToString();
                English = dr["English"].ToString();
                FromDate = dr["FromDate"].ToString();
                ToDate = dr["ToDate"].ToString();
                Grade = dr["Grade"].ToString();
                GivenDate = dr["GivenDate"].ToString();

                //School.Items.Add(dr[0].ToString());
            }
           
            con.Close();
        }
        catch (Exception ex) { }
        //{ MessageBox.Show(ex.Message); }
    }
    

   
    
}