using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='D:\6th SEM\.NET\ERP System\ERP\App_Data\Database.mdf';Integrated Security=True";
            string query = "SELECT * FROM student";

            using (SqlConnection conn = new SqlConnection(conString))
            {
                conn.Open();

                using (SqlCommand command = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        DataTable dataTable = new DataTable();
                        dataTable.Load(reader);

                        Studentgridview.DataSource = dataTable;
                        Studentgridview.DataBind();
                    }
                }
            }
        }

    }
    protected void Studentgridview_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void Logout(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("adminlogin.aspx");
    }
}