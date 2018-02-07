using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        cn.Open();
    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    { 
       
        
        string str = "insert into Hybrid values(@Manufacturer,@Name,@Speed,@Rate,@Pic)";
        string str1 = ("upload/") + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath("upload/"+FileUpload1.FileName));

        SqlCommand cmd = new SqlCommand(str, cn);
        cmd.Parameters.AddWithValue("@Manufacturer", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Speed", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Rate", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Pic",str1);
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string str = "insert into Micro values(@Manufacturer,@Name,@Speed,@Rate,@Pic)";
        string str2 = ("upload/") + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath("upload/" + FileUpload1.FileName));
        SqlCommand cmd = new SqlCommand(str, cn);
        cmd.Parameters.AddWithValue("@Manufacturer", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Speed", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Rate", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Pic", str2);
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string str = "insert into Sedan values(@Manufacturer,@Name,@Speed,@Rate,@Pic)";
        string str3 = ("upload/") + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath("upload/" + FileUpload1.FileName));
        SqlCommand cmd = new SqlCommand(str, cn);
        cmd.Parameters.AddWithValue("@Manufacturer", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Speed", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Rate", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Pic", str3);
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = ""; 
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string str = "insert into SUV values(@Manufacturer,@Name,@Speed,@Rate,@Pic)";
        string str4 = ("upload/") + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath("upload/" + FileUpload1.FileName));

        SqlCommand cmd = new SqlCommand(str, cn);
        cmd.Parameters.AddWithValue("@Manufacturer", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Speed", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Rate", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Pic", str4);
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        string str = "insert into Luxury values(@Manufacturer,@Name,@Speed,@Rate,@Pic)";
        string str5 = ("upload/") + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath("upload/" + FileUpload1.FileName));
        SqlCommand cmd = new SqlCommand(str, cn);
        cmd.Parameters.AddWithValue("@Manufacturer", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Speed", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Rate", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Pic", str5);
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}