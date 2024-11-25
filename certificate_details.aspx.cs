using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.IO;

public partial class certificate_details : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlDataAdapter da;
    SqlConnection cn = new SqlConnection(db_connection1.dbcon());
    public string name = "", father = "", course = "", enroll = "", center = "", sr = "", issuedate = "", photo = "", center_code="";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            get_details();
        }
    }
    private void get_details()
    {
        try
        {
            cn.Open();
            //SqlCommand cmd = new SqlCommand("SELECT     dbo.SITM_admission.photo, dbo.SITM_admission.Student_name, dbo.SITM_admission.application_no, dbo.SITM_admission.Father_Name, dbo.SITM_branch_details.centre_name, dbo.SITM_course.short_name FROM         dbo.SITM_branch_details INNER JOIN dbo.SITM_admission ON dbo.SITM_branch_details.centre_code COLLATE Latin1_General_CI_AI = dbo.SITM_admission.branch_code INNER JOIN                       dbo.SITM_course ON dbo.SITM_admission.Selected_Course = dbo.SITM_course.course_name COLLATE Latin1_General_CI_AI WHERE     (dbo.SITM_admission.application_no ='" + Request.QueryString["enroll"].ToString() + "')", cn);
            SqlCommand cmd = new SqlCommand("SELECT    dbo.SITM_admission.photo, dbo.SITM_admission.Student_name, dbo.SITM_admission.application_no, dbo.SITM_admission.Father_Name, dbo.SITM_branch_details.centre_name,  dbo.SITM_course.course_name, dbo.SITM_branch_details.centre_code" +
" FROM    dbo.SITM_branch_details INNER JOIN  dbo.SITM_admission ON dbo.SITM_branch_details.centre_code = dbo.SITM_admission.branch_code INNER JOIN dbo.SITM_course ON dbo.SITM_admission.Selected_Course = dbo.SITM_course.subject_id " +
" GROUP BY dbo.SITM_branch_details.centre_name, dbo.SITM_admission.application_no, dbo.SITM_admission.Student_name, dbo.SITM_admission.photo, dbo.SITM_admission.Father_Name,  dbo.SITM_course.course_name, dbo.SITM_branch_details.centre_code " +
" HAVING      (dbo.SITM_admission.application_no = '" + Request.QueryString["enroll"].ToString() + "')", cn);
            //OleDbCommand cmd = new OleDbCommand("Select Staff_Name from Staff_Detail", con);
            SqlDataReader dr = cmd.ExecuteReader();
            // OleDbDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                photo = dr[0].ToString();
                name = dr[1].ToString();
                enroll = dr[2].ToString();

                father = dr[3].ToString();
                center = dr[4].ToString();
                course = dr[5].ToString();
                center_code = dr[6].ToString();


            }
            cn.Close();

        }
        catch (Exception ex)
        {


        }
        finally
        {


        }
    }
}