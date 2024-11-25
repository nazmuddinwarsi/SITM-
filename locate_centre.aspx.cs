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

public partial class locate_centre : System.Web.UI.Page
{
    string userid = "";
    SqlConnection con = new SqlConnection(db_connection1.dbcon());
    public string roll = "";
    public string centre_details = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        getbranch_details();

    }
    private void getbranch_details()
    {
        try
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT auto_id, centre_code, centre_place, centre_name, autho_person, autho_mobile, address, email, website, photo FROM  SITM_branch_details order by auto_id", con);
            //OleDbCommand cmd = new OleDbCommand("Select Staff_Name from Staff_Detail", con);
            SqlDataReader dr = cmd.ExecuteReader();
            // OleDbDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                centre_details += " <div class=\"col-md-6\"><div class=\"row\"><div class=\"col-md-12\" ><div class=\"blog-post-container\" ><div class=\"blog-post-inner\" style=\"height:600px\"><div class=\"contact-heading\"><h3>Centre Information</h3></div><div class=\"contact-form clearfix\"><p class=\"full-row\"><span class=\"contact-label\"><label for=\"name-id\">Centre Code:</label></span><label for=\"name-id\">" + dr[1].ToString() + "</label></p><p class=\"full-row\"><span class=\"contact-label\"><label for=\"name-id\">Centre Place:</label> " +
                    "</span><label for=\"name-id\" style=\"color:red\">" + dr[2].ToString() + "</label></p><p class=\"full-row\"><span class=\"contact-label\"><label for=\"name-id\">Centre Name:</label></span><label for=\"name-id\" style=\"color:red\">" + dr[3].ToString() + "</label></p><p class=\"full-row\"><span class=\"contact-label\"><label for=\"name-id\">Aurthorize Person:</label></span><label for=\"name-id\" style=\"color:red\">" + dr[4].ToString() + "</label></p>"+
                        "<p class=\"full-row\"><span class=\"contact-label\"><label for=\"name-id\">Address:</label></span><b>" + dr[6].ToString() + "</b></p><p class=\"full-row\"><span class=\"contact-label\"><label for=\"name-id\">Email Address:</label></span><label for=\"name-id\">" + dr[7].ToString() + "</label></p><p class=\"full-row\"><span class=\"contact-label\"><label for=\"name-id\">Website:</label></span><label for=\"name-id\">" + dr[8].ToString() + "</label></p><p class=\"full-row\"><span class=\"contact-label\"><label for=\"name-id\">Person Photo :</label></span><span class=\"contact-label\"><img src=\"" + dr[9].ToString() + "\"  width=\"100%\"/></span></p></div></div></div></div></div></div>";
                //School.Items.Add(dr[0].ToString());
            }
            con.Close();
        }
        catch (Exception ex) { }
        //{ MessageBox.Show(ex.Message); }
    }
}