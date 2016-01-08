using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using newmodel;
using System.Linq.Expressions;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;
using System.Globalization;

public partial class Management_feedbackreview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (newentities myentities = new newentities())
        {

           var a1= from f in myentities.feedbacks
                   group f by 1 into g
                   select new {
                       AVERAGE_RESPONSE_TIME=g.Average(f=> f.q1),
                       AVERAGE_SOFTWARE_UPTIME=g.Average(f => f.q2),
                       AVERAGE_HARDWARE_UPTIME = g.Average(f => f.q3),
                       
                   };

           GridView2.DataSource = a1;
           GridView2.DataBind();



           var b1 = from f in myentities.feedbacks
                    group f by 1 into g
                    select new
                    {
                       
                        AVERAGE_LAN_PERFORMANCE = g.Average(f => f.q4),
                        AVERAGE_TELE_PERFORMANCE = g.Average(f => f.q5),
                        AVERAGE_WIFI_PERFORMANCE = g.Average(f => f.q6),
                       
                    };

           GridView3.DataSource = b1;
           GridView3.DataBind();

           var c1 = from f in myentities.feedbacks
                    group f by 1 into g
                    select new
                    {
                        AVERAGE_SIGNAL_BOOSTER = g.Average(f => f.q7),
                        AVERAGE_PROCUREMENT = g.Average(f => f.q8),
                        AVERAGE_UPDATION = g.Average(f => f.q9),
                       
                    };

           GridView4.DataSource = c1;
           GridView4.DataBind();




           var d1 = from f in myentities.feedbacks
                    group f by 1 into g
                    select new
                    {
                        
                        AVERAGE_AVCONFERENCING = g.Average(f => f.q10),
                        AVERAGE_IMPORTANCE_GIVEN = g.Average(f => f.q11),
                        AVERAGE_MAINTENANCE = g.Average(f => f.q12)
                    };

           GridView5.DataSource = d1;
           GridView5.DataBind();

           GridView1.Visible = false;
            
        }
    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        using (newentities myentities = new newentities())
        {
            var feed = from f in myentities.feedbacks
                       select new { EMPLOYEE_NUMBER=f.empno, EMPLOYEE_NAME=f.name, SUGGESTIONS_GIVEN=f.suggestions,BEST_TECHNOLOGY= f.besttechno };
            GridView1.Visible = true;
            GridView1.DataSource = feed;
            GridView1.DataBind();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {        
        
        
    }
                
    



}


