using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{

    public string firstName, lastName, CB, Social, age, freeTextTA;


    protected void Page_Load(object sender, EventArgs e)
    {
        firstName = Request.Form["firstName"];
        lastName = Request.Form["lastName"];
        CB = Request.Form["CB"];
        Social = Request.Form["Social"];
        age = Request.Form["age"];
        freeTextTA = Request.Form["freeTextTA"];
    }
}