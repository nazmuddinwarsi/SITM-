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

public partial class registration_details : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlDataAdapter da;
    SqlConnection cn = new SqlConnection(db_connection1.dbcon());
    public string name = "", father = "", mother = "", enroll = "", cert = "", sr = "", issuedate = "",photo="";
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
            SqlCommand cmd = new SqlCommand("SELECT Student_name,Father_Name,Mother_Name,application_no,photo FROM SITM_admission where application_no='" + Request.QueryString["enroll"].ToString() + "'", cn);
            //OleDbCommand cmd = new OleDbCommand("Select Staff_Name from Staff_Detail", con);
            SqlDataReader dr = cmd.ExecuteReader();
            // OleDbDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                name = dr[0].ToString();
                father = dr[1].ToString();
                mother = dr[2].ToString();
                enroll = dr[3].ToString();
               
                photo = dr[4].ToString();
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