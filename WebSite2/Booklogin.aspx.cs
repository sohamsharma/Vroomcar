using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Booklogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel5.Visible = true;
      
        
    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Panel2.Visible = false;
        Panel1.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel1.Visible = false;
        Panel5.Visible = false;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel5.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel1.Visible = false;
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   
}