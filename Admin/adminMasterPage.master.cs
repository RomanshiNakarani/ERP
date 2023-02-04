using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_adminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }

    protected void Logout()
    {
        Session.Clear();
        Response.Redirect("adminlogin.aspx");
    }


 
}
