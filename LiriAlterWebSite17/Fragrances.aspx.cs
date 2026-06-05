using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Fragrances : System.Web.UI.Page
{
    public string st1 = "";
    public string st2 = "";
    public string msg = "";
    public string AddFragrancesVisible = "display: none;";
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql1 = "SELECT * FROM [dbo].[tFragrances]";

        DataTable dt1 = MyAdoHelper.ExecuteDataTable(sql1);

        if (dt1.Rows.Count == 0)
        {
            st1 = "No fragrances at this moment.";

        }
        else
        {
            st1 += "<table border = '1.5'>";
            st1 += "<tr>";
            st1 += "<td>number</td>";
            st1 += "<td>Company</td>";
            st1 += "<td>Name</td>";
            st1 += "<td>Scent Profile</td>";
            st1 += "<td>Market Value (USD)</td>";
            st1 += "<td>Gender Leaning</td>";
            st1 += "<td>Lasting Time (Hours)</td>";
            st1 += "</tr>";

            for (int i = 0; i < dt1.Rows.Count; i++)
            {
                st1 += "<tr>";

                for (int j = 0; j < dt1.Columns.Count; j++)
                {
                    st1 += "<td>" + dt1.Rows[i][j] + "</td>";
                }
                st1 += "</tr>";
            }
            st1 += "</table>";
        }

     
    }
}