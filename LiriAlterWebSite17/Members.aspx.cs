using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Members : System.Web.UI.Page
{
    public string st1 = "";
    public string st2 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql1 = "SELECT * FROM [dbo].[tUsers]";

        DataTable dt1 = MyAdoHelper.ExecuteDataTable(sql1);

        if (dt1.Rows.Count == 0)
        {
            st1 = "No members at this moment.";

        }
        else
        {
            st1 += "<table border = '1.5'>";
            st1 += "<tr>";
            st1 += "<td>First name</td>";
            st1 += "<td>Last name</td>";
            st1 += "<td>Hobbies</td>";
            st1 += "<td>Social</td>";
            st1 += "<td>Age</td>";
            st1 += "<td>Free Text</td>";
            st1 += "<td>Email</td>";
            st1 += "<td>Password</td>";
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

        if (Page.IsPostBack)
        {
            string fn = Request.Form["firstName"];
            string ln = Request.Form["lastName"];

            string sql2 =
            "SELECT * FROM tUsers WHERE " +
            "firstName = N'" + fn + "' AND " +
            "lastName = N'" + ln + "'";

            DataTable dt2 = MyAdoHelper.ExecuteDataTable(sql2);

            if (dt2.Rows.Count == 0)
            {
                st2 = "No members at this moment.";

            }
            else
            {
                st2 += "<table border = '1.5'>";
                st2 += "<tr>";
                st2 += "<td>First name</td>";
                st2 += "<td>Last name</td>";
                st2 += "<td>Hobbies</td>";
                st2 += "<td>Social</td>";
                st2 += "<td>Age</td>";
                st2 += "<td>Free Text</td>";
                st2 += "<td>Email</td>";
                st2 += "<td>Password</td>";
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