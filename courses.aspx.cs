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


public partial class courses : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    //string userid = "";
   public string course_id = "";
    SqlConnection con = new SqlConnection(db_connection1.dbcon());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            getcourses();
            coursename();
        }
    }
    public void coursename()
    {
        try
        {
            string query = "SELECT course_type from SITM_course where course_id='" + Request.QueryString["course_id"].ToString() + "'";
            cmd = new SqlCommand(query, con);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                course_id = dr[0].ToString();

                //show += "<table>  <tr><td  ><img src=\"" + dr[1].ToString() + "\" width=\"275px\" height=\"160px\" /></td></tr><tr><td><table> <tr><td>Photo Id:</td> <td>" + dr[0].ToString() + "</td> </tr>           <tr><td>Description:</td><td>" + dr[3].ToString() + "</td></tr>   </table></td></tr></table></li></ul></td>";


              

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
    private void getcourses()
    {
        try
        {
            string rty = "SELECT course_name,duration,eligibility,fee from SITM_course where course_id='"+Request.QueryString["course_id"].ToString()+"'";
          
            cmd = new SqlCommand(rty, con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {

        }
        finally
        {
            da.Dispose();
            cmd.Dispose();


        }
    }
}