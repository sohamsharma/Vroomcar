using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class SUV : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

 
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        cn.Open();
        
      
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
        Label3.Text = DateTime.Now.ToString();
        string str = "insert into Log values(@EmailID,@Car,@Date,@Days,@Remarks,@Fare,@Coupon)";
        SqlCommand cmd = new SqlCommand(str, cn);
        cmd.Parameters.AddWithValue("@EmailID", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Car", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@Date", Label3.Text);
        cmd.Parameters.AddWithValue("@Days", DropDownList2.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@Remarks", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Fare", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Coupon", TextBox2.Text);
        cmd.ExecuteNonQuery();
            if (TextBox2.Text == "10OFF")
            {
                Label4.Visible = true;
                Label4.Text = "10% Discount on Delivery";
            }

            else if (TextBox2.Text == "20OFF")
            {
                Label4.Visible = true;
                Label4.Text = "20% Discount on Delivery";
            }

            else if (TextBox2.Text == "30OFF")
            {
                Label4.Visible = true;
                Label4.Text = "30% Discount on Delivery";
            }

            else
            {
                Label4.Visible = true;
                Label4.Text = "";
            }
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(DropDownList2.SelectedItem.Text);
        int b = Convert.ToInt32(DropDownList3.SelectedItem.Text);
        int c = a * b;
        TextBox4.Text = c.ToString();
    }
}