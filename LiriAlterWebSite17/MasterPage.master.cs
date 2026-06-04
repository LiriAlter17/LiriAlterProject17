using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{

    public string RegisterVisible= "";
    public string ManagerVisible = "";
    public string SearchVisible = "";
    public string ComplexSearchVisible = "";
    public string SearchLikeVisible = "";
    public string ComplexSearchLikeVisible = "";
    public string UpdateDetailsVisible = "";
    public string LoginVisible = "";
    public string MembersVisible = "";
    public string FragrancesVisible = "";
    public string UserName = "Guest";
    public string LogoutVisible = "display: none;";
    


    protected void Page_Load(object sender, EventArgs e)
    {
        setNavigation();

    }


    private void setNavigation()
    {

        if (Session["userType"] == null) { //guest

            UserName = "Guest";
            LogoutVisible = "display: none;";
            ManagerVisible = "display: none;";
            SearchVisible = "display: none;";
            ComplexSearchVisible = "display: none;";
            SearchLikeVisible = "display: none;";
            FragrancesVisible = "display: none;";
            ComplexSearchLikeVisible = "display: none;";
            UpdateDetailsVisible = "display: none;";
            MembersVisible = "display: none;";

        } else if (Session["userType"].ToString() == "admin"){//administrator

            LogoutVisible = "";
            RegisterVisible = "display: none;";
            LoginVisible = "display: none;";
            UserName = "Admin";

        }
        else//user
        {
            LogoutVisible = "";
            LoginVisible = "display: none;";
            ManagerVisible = "display: none;";
            RegisterVisible = "display: none;";
            MembersVisible = "display: none;";
            UserName = Session["userName"].ToString();

        }
    }



}
