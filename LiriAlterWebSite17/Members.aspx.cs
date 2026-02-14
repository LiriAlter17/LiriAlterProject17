using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Members : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "SELECT * FROM [dbo].[tUsers]";

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0)
        {
            st = "No members at this moment.";

        }
        else
        {
            st += "<table border = '1.5'>";
            st += "<tr>";
            st += "<td>First name</td>";
            st += "<td>Last name</td>";
            st += "<td>Hobbies</td>";
            st += "<td>Social</td>";
            st += "<td>Age</td>";
            st += "<td>Free Text</td>";
            st += "<td>Email</td>";
            st += "<td>Password</td>";
            st += "</tr>";

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";

                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    st += "<td>" + dt.Rows[i][j] + "</td>";
                }
                st += "</tr>";
            }
            st += "</table>";
        }
    }
}