using System;
using System.Activities.Tracking;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{

    public string st;

    if (Page.IsPostBack)
    {

            protected void Page_Load(object sender, EventArgs e)
            {
                string firstName = Request.Form["firstName"];
                string lastName = Request.Form["lastName"];
                string CB = Request.Form["CB"];
                string Social = Request.Form["Social"];
                string age = Request.Form["age"];
                string freeTextTA = Request.Form["freeTextTA"];
            }
            string sqlInsert =
            "INSERT INTO tUsers VALUES (" +
            "N'" + firstName + "'," +
            "N'" + lastName + "'," +
            "N'" + CB + "'," +
            "N'" + Social + "'," +
            "N'" + age + "'," +
            "N'" + freeTextTA + "'," +
            ")";

            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);
     }



}