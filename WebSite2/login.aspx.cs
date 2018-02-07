using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        cn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        string str = "select * from data where UserName='" + TextBox1.Text + "' AND Password='" + TextBox2.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(str, cn);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        //string str3;
        //str3 = TextBox1.Text;
        if (dt.Rows.Count > 0)
        {
            Session["uname"] = dt.Rows[0]["UserName"].ToString();
            Response.Redirect("Default2.aspx");
        }
       
    }
}