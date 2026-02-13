using System;
using System.Collections.Generic;
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

            string sql1 =
            "SELECT * FROM tUsers " +
            "WHERE Email = N'" + email + "' " +
            "AND Password = N'" + password + "'";

            bool userExists = MyAdoHelper.IsExist(sql1);

            if (userExists)
            {
                msg1 = "You are good to go.";
            }
            else
            {
                msg1 = "User doesn't exist.";
            }
        }



    }
}
