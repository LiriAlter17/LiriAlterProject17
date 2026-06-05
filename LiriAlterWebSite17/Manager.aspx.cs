using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager : System.Web.UI.Page
{
    public string msg = "";
    public string AddFragrancesVisible = "display: none;";
    protected void Page_Load(object sender, EventArgs e)
    {

            string Company = Request.Form["Company"];
            string Name = Request.Form["Name"];
            string ScentProfile = Request.Form["ScentProfile"];
            string MarketValueUSD = Request.Form["MarketValue(USD)"];
            string GenderLeaning = Request.Form["GenderLeaning"];
            string LastingTimeHours = Request.Form["LastingTime(Hours)"];

            string sqlInsert =
            "INSERT INTO tFragrances VALUES (" +
            "N'" + Company + "'," +
            "N'" + Name + "'," +
            "N'" + ScentProfile + "'," +
            "N'" + MarketValueUSD + "'," +
            "N'" + GenderLeaning + "'," +
            "N'" + LastingTimeHours + "'" +
            ")";

            string sql =
            "SELECT * FROM tFragrances " +
            "WHERE Company = N'" + Company + "' " +
            "AND Name = N'" + Name + "'";

            bool userExists = MyAdoHelper.IsExist(sql);

            if (userExists)
            {
                msg = "This fragrance is already in the list.";
            }
            else
            {
                MyAdoHelper.DoQuery("/app_data/MyDB.mdf", sqlInsert);
            }
     
    }
}