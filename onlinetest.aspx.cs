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

public partial class onlinetest : System.Web.UI.Page
{
    string userid = "";
    SqlConnection con = new SqlConnection(db_connection1.dbcon());
    public string img = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            getcourse();
        }
    }
    private void getcourse()
    {
        try
        {
            cat.Items.Clear();


            con.Open();
            SqlCommand cmd = new SqlCommand("select lang from sitm_quiz group by lang order by lang asc", con);
            //OleDbCommand cmd = new OleDbCommand("Select Staff_Name from Staff_Detail", con);
            SqlDataReader dr = cmd.ExecuteReader();
            // OleDbDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                cat.Items.Add(dr[0].ToString());
                //School.Items.Add(dr[0].ToString());
            }
            con.Close();
        }
        catch (Exception ex) { }
        //{ MessageBox.Show(ex.Message); }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("starttest.aspx?course="+cat.Text);
    }
}