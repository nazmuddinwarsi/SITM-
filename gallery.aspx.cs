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
using System.Data;


public partial class gallery : System.Web.UI.Page
{
     SqlConnection cn = new SqlConnection(db_connection1.dbcon());
    SqlDataReader dr;
    SqlCommand cmd;
    int i = 0;
    public string show = "";
    public string get_item = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            get_gallery();
        }
    }
    private void get_gallery()
    {
        try
        {
            string query = "SELECT   tittle,photo from SITM_photo_gallery  ";
            cmd = new SqlCommand(query, cn);

            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                // show += dr[0].ToString() + "<br/>";

                show += "    <div class=\"col-md-4 mix students\" data-cat=\"3\"><div class=\"gallery-item\"><a class=\"fancybox\" rel=\"gallery1\" href=\"" + dr[1].ToString() + "\"><div class=\"gallery-thumb\"><img src=\"" + dr[1].ToString() + "\" alt=\"\" /></div><div class=\"gallery-content\"><h4 class=\"gallery-title\">" + dr[0].ToString() + "</h4></div></a></div> </div>";


                i++;

            }

            {
                get_item += show;
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
