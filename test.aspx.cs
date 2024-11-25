using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //txtDate.Text = System.DateTime.Now.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // TextBox1.Text=  Convert.ToDateTime(txtDate.Text.ToString("dd/MM/yyyy")) ;
       
        DateTime timeIn = Convert.ToDateTime(txtDate.Text);
        TextBox1.Text = timeIn.ToString("yyyy/MM/dd");
    }
}