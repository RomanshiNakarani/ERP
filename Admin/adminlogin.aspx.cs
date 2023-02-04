using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_btn_Click(object sender, EventArgs e)
    {
        // Step 1: Retrieve the user's input
        string email = email_id.Text;
        string password = pass.Text;

        // Step 2: Connect to the database
        string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='D:\6th SEM\.NET\ERP System\ERP\App_Data\Database.mdf';Integrated Security=True";

        SqlConnection conn = new SqlConnection(conString);
        conn.Open();

        // Step 3: Verify the user's credentials
        string q = "SELECT* FROM admin WHERE email_id = @email_id AND password = @password";
        SqlCommand cmd = new SqlCommand(q, conn);
        cmd.Parameters.AddWithValue("@email_id", email);
        cmd.Parameters.AddWithValue("@password", password);
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            // Step 4: Redirect the user to the dashboard page
            Session["user"] = email;
            Response.Redirect("admin.aspx");
        }
        else
        {
            // Display an error message
            lblError.Text = "Enter valid Email Id or Password.";
        }

        reader.Close();
        conn.Close();


    }
}