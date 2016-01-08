using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Management_addadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ContinueButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Management/Default1.aspx"); 
    }
}