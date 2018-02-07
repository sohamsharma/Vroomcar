using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Default8 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        cn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str1 = "select UserName from data where Username='" + TextBox2.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(str1, cn);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Label2.Visible = true;
            Label2.Text = "Username already exists";
        }
        else
        {
            string str = "insert into data values(@Name,@UserName,@Sex,@Age,@EmailID,@Address,@PhoneNo,@Password)";
            SqlCommand cmd = new SqlCommand(str, cn);
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@UserName", TextBox2.Text);
            if (RadioButton1.Checked == true)
            {
                cmd.Parameters.AddWithValue("@Sex", RadioButton1.Text);
            }
            else
            {
                cmd.Parameters.AddWithValue("@Sex", RadioButton2.Text);
            }
            cmd.Parameters.AddWithValue("@Age", TextBox3.Text);
            cmd.Parameters.AddWithValue("@EmailID", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox5.Text);
            cmd.Parameters.AddWithValue("@PhoneNo", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox7.Text);
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox1.Focus();
            Label1.Text = "Your Account is Created";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default8.aspx");
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}


    