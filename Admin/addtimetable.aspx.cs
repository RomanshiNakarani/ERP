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
        Fill();
    }

    private void Fill()
    {
        if (!IsPostBack)
        {
            string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='D:\6th SEM\.NET\ERP System\ERP\App_Data\Database.mdf';Integrated Security=True";
            string query = "SELECT timetable_name, img FROM timetable";

            using (SqlConnection conn = new SqlConnection(conString))
            {
                conn.Open();

                using (SqlCommand command = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        DataTable dataTable = new DataTable();
                        dataTable.Load(reader);

                        timetablegrid.DataSource = dataTable;
                        timetablegrid.DataBind();
                    }
                }
            }
        }
    }
    
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='D:\6th SEM\.NET\ERP System\ERP\App_Data\Database.mdf';Integrated Security=True");
    protected void Timetable_Click(object sender, EventArgs e)
    {
        string path;
        if (Tt_imag.HasFile)
            Tt_imag.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image/" + Tt_imag.FileName);
            path = Tt_imag.FileName;
        string q = "insert into timetable(timetable_name,img)values('"+tt_name.Text+"', '"+path+"')";
        
        SqlCommand cmd = new SqlCommand(q, conn);
 
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect(Request.Url.AbsoluteUri);

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Logout(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("adminlogin.aspx");
    }
}