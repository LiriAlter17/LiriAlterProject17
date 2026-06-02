using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    public string msg1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {




        if (Page.IsPostBack)
        {
            string email = Request.Form["email"];
            string password = Request.Form["password"];

            if (email == "liri.alter@gmail.com" && password == "Admin17")
            {
                Session["userType"] = "admin";
                Response.Redirect("Members.aspx");
            }
            else
            {

                string sql1 =
            "SELECT * FROM tUsers " +
            "WHERE Email = N'" + email + "' " +
            "AND Password = N'" + password + "'";

                DataTable users = MyAdoHelper.ExecuteDataTable(sql1);

                if (users.Rows.Count==1)
                {
                    Session["userType"] = "user";
                    Session["userName"] = users.Rows[0]["firstName"].ToString();
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    msg1 = "invalid";
                }
            }
        }



    }
}
