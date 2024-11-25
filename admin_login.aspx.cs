using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
public partial class admin_login : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlDataReader dr;
    string user = null;
    string password = null;
    string admin = null;
    string adminpass = null;
    SqlConnection cn = new SqlConnection(db_connection1.dbcon());
    protected void Page_Load(object sender, EventArgs e)
    {
        user = GetParam("username");
        password = GetParam("password");
        if (Page.IsPostBack)
        {
            if (getloginn() == true)
            {
                Response.Redirect("admin/Admin.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(typeof(Page), "message", "alert('Invalid/Userid or Password Try Again');", true);
            }
        }
    }
    public String GetParam(String ParamName)
    {
        String Param = "", GetParam = "";
        if (Request.Form[ParamName] != null)
            Param = Request.Form[ParamName];
        else if (Request.QueryString[ParamName] != null)
            Param = Request.QueryString[ParamName];
        else
            Param = "";

        if (Param == "")
            GetParam = "";
        else
        {
            GetParam = Param;
        }
        return GetParam;
    }

    private bool getloginn()
    {
        bool result = false;
        try
        {

            string mtr = "SELECT username,password from SITM_login where username='" + user + "' and password = '" + password + "'";
            cmd = new SqlCommand(mtr, cn);

            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                admin = dr[0].ToString();
                adminpass = dr[1].ToString();

            }
            if (user == admin && password == adminpass)
            {
                result = true;
                Session["username"] = user;




            }
            else
            {
                //Response.Write("<script>alert('Authunticate Failed')</script>");
                result = false;


            }
        }
        catch
        {
            ClientScript.RegisterStartupScript(typeof(Page), "message", "alert('Try Again');", true);
        }
        finally
        {
            cmd.Dispose();
            dr.Dispose();
            dr.Close();
        }
        return result;



    }
}