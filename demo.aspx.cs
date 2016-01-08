using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class demo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataView dvSql = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        foreach (DataRowView drvSql in dvSql)
        {
            Label1.Text = drvSql["name"].ToString();
        }

        SqlDataReader rdrSql = (SqlDataReader)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
        while (rdrSql.Read())
        {
            Label2.Text = rdrSql["name"].ToString();

        }
        rdrSql.Close();
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        e.Command.Parameters["enum"].Value = 2;
    }

    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        e.Command.Parameters["enum"].Value = 2;
    }
}