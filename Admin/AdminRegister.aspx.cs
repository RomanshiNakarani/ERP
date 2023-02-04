using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

 
    protected void Button2_Click(object sender, EventArgs e)
    {
        // Label1.Text = admin_name.Text;
        string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='D:\6th SEM\.NET\ERP System\ERP\App_Data\Database.mdf';Integrated Security=True";
        SqlConnection con = new SqlConnection(conString);
        con.Open();

        string q = "Insert into admin(name,email_id,password)Values(@admin_name,@email_id,@pass)";
        SqlCommand cmd = new SqlCommand(q, con);
        cmd.Parameters.AddWithValue("@admin_name", admin_name.Text);
        cmd.Parameters.AddWithValue("@email_id", email_id.Text);
        cmd.Parameters.AddWithValue("@pass", pass.Text);

        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("adminlogin.aspx");


    }
}