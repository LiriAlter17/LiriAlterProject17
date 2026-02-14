using System;
using System.Activities.Tracking;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{

    public string msg = "";

    protected void Page_Load(object sender, EventArgs e)
    {




        if (Page.IsPostBack)
        {

            string email = Request.Form["email"];
            string password = Request.Form["password"];
            string firstName = Request.Form["firstName"];
            string lastName = Request.Form["lastName"];
            string CB = Request.Form["CB"];
            string Social = Request.Form["Social"];
            string age = Request.Form["age"];
            string freeTextTA = Request.Form["freeTextTA"];

            string sqlInsert =
            "INSERT INTO tUsers VALUES (" +
            "N'" + firstName + "'," +
            "N'" + lastName + "'," +
            "N'" + CB + "'," +
            "N'" + Social + "'," +
            "N'" + age + "'," +
            "N'" + freeTextTA + "'," +
            "N'" + email + "'," +
            "N'" + password + "'" +
            ")";

            string sql =
            "SELECT * FROM tUsers " +
            "WHERE Email = N'" + email + "' " +
            "AND Password = N'" + password + "'";

            bool userExists = MyAdoHelper.IsExist(sql);

            if (userExists)
            {
                msg = "User already exists.";
            }
            else
            {
                MyAdoHelper.DoQuery("/app_data/MyDB.mdf", sqlInsert);
                Response.Redirect("HomePage.aspx");
            }
        }



    }
}