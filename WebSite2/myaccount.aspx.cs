using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myaccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView2.Visible = true;
        Label2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label3.Visible = true;
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label4.Visible = true;
    }
}