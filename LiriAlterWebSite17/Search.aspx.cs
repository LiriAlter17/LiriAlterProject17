using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    public string st2 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string cmp = Request.Form["Company1"];
        string nm = Request.Form["Name1"];

        string sql2 =
        "SELECT * FROM tFragrances WHERE " +
        "Company = N'" + cmp + "' AND " +
        "Name = N'" + nm + "'";

        DataTable dt2 = MyAdoHelper.ExecuteDataTable(sql2);

        if (Page.IsPostBack)
        {
            if (dt2.Rows.Count == 0)
            {
                st2 = "This fragrance is unavailable at the moment.";

            }
            else
            {
                st2 += "<table border = '1.5'>";
                st2 += "<tr>";
                st2 += "<td>number</td>";
                st2 += "<td>Company</td>";
                st2 += "<td>Name</td>";
                st2 += "<td>Scent Profile</td>";
                st2 += "<td>Market Value (USD)</td>";
                st2 += "<td>Gender Leaning</td>";
                st2 += "<td>Lasting Time (Hours)</td>";
                st2 += "</tr>";

                for (int i = 0; i < dt2.Rows.Count; i++)
                {
                    st2 += "<tr>";

                    for (int j = 0; j < dt2.Columns.Count; j++)
                    {
                        st2 += "<td>" + dt2.Rows[i][j] + "</td>";
                    }
                    st2 += "</tr>";
                }
                st2 += "</table>";
            }
        }
    }
}