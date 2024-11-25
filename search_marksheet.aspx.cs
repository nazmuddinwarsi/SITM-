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
public partial class search_marksheet : System.Web.UI.Page
{
    string userid = "";
    SqlConnection con = new SqlConnection(db_connection1.dbcon());
    public string roll = "";
    SqlDataReader dr;
    SqlCommand cmd;
    SqlDataAdapter da;
    public string cert_id = "",RegNo="";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //string query = "SELECT certificate_id from SITM_certificate where reg_no= '" + txtcourse.Text + "' and status='Issued'";
            string query = "SELECT        dbo.SITM_admission.application_no, dbo.SITM_certificate.certificate_id " +
                            " FROM dbo.SITM_admission LEFT OUTER JOIN dbo.SITM_certificate ON dbo.SITM_admission.application_no = dbo.SITM_certificate.reg_no " +
                            " WHERE(dbo.SITM_admission.application_no = '" + txtcourse.Text + "') AND  (dbo.SITM_certificate.status IS NULL  or dbo.SITM_certificate.status='Issued')";
            cmd = new SqlCommand(query, con);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                RegNo = dr["application_no"].ToString();
                cert_id = dr["certificate_id"].ToString();



            }
            if (cert_id == "" && RegNo == "")
            {
                Response.Write("<script>alert('Incorrect Certificate No.');</script>");

            }
            else if (cert_id == "" && RegNo != "")
                {
                Response.Write("<script>alert('Your Certificate is issued but contact adminstration or call 9415610609');</script>");
                 }
        
            else
            {
                Response.Redirect("marksheet_details.aspx?application_no=" + txtcourse.Text);
            }

        }
        catch (Exception ex)
        {

        }
        finally
        {
            cmd.Dispose();
            dr.Close();
            dr.Dispose();


        }
    }

}