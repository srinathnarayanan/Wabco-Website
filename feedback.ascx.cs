using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (Page.IsValid)
        {

            System.Threading.Thread.Sleep(5000);


            Response.Redirect("thankyou.aspx");

        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
    }


}