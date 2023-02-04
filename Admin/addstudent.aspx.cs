using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Addstudent_Click(object sender, EventArgs e)
    {
        string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='D:\6th SEM\.NET\ERP System\ERP\App_Data\Database.mdf';Integrated Security=True";
        SqlConnection con = new SqlConnection(conString);
        con.Open();

        string q = "Insert into student(name,email_id,institute,admission_year,course,division,semester,gender,password)Values(@name, @email_id, @institute, @admission_year, @course, @division, @semester, @gender, @password)";
        SqlCommand cmd = new SqlCommand(q, con);
        cmd.Parameters.AddWithValue("@name", s_name.Text);
        cmd.Parameters.AddWithValue("@email_id", s_email_id.Text);
        cmd.Parameters.AddWithValue("@institute", institute.Text);
        cmd.Parameters.AddWithValue("@admission_year", admission_year.Text);
        cmd.Parameters.AddWithValue("@course", course.SelectedValue);
        cmd.Parameters.AddWithValue("@division", div.SelectedValue);
        cmd.Parameters.AddWithValue("@semester", sem.SelectedValue);
        cmd.Parameters.AddWithValue("@gender", gender.SelectedValue);
        cmd.Parameters.AddWithValue("@password", pass.Text);

        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect(Request.Url.AbsoluteUri);
    }

    protected void Logout(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("adminlogin.aspx");
    }
}