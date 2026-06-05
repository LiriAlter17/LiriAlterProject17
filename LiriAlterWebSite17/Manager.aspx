<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>Manager.</h2>

    <script type="text/javascript">

        function checkCompany()
        {
            var company = document.getElementById("Company").value;
            var name = document.getElementById("Name").value;

            if (company != "xerjoff" && company != "louis vuitton" && company != "maison margiela" && company != "parfums de marly" && company != "french avenue" && company != "chanel" && company != "dior" && company != "ysl" && company != "jean paul gaultier" && company != "versace" && company != "stephane humbert lucas" && company != "giorgio armani" && company != "tom ford" && company != "creed" && company != "maison francis kurkdjian" && company != "acqua di parma" && company != "kilian" && company != "mancera" && company != "montale" && company != "valentino" && company != "paco rabanne" && company != "prada" && company != "azzaro" && company != "dolce & gabbana" && company != "ralph lauren" && company != "juliette has a gun" && company != "nishane" && company != "amouage") {
                alert("This companey seems to not be on our list, try one of those: xerjoff, louis vuitton, maison margiela, parfums de marly, french avenue, chanel, dior, ysl, jean paul gaultier, versace, stephane humbert lucas, giorgio armani, tom ford, creed, maison francis kurkdjian, acqua di parma, kilian, mancera, montale, valentino, paco rabanne, prada, azzaro, dolce & gabbana, ralph lauren, juliette has a gun, nishane, amouage.");
                return false;
            }
            if (name == "") {
                alert("Please enter a name for the fragrance.");
                return false;
             }
            return true
        }
</script>


    <form name="formPage1" method="post" runat="server">
        <div name="inputDiv" id="inputDiv">
            <label>Enter a new fragrance to the list.</label>
            <br />
            <table>
                <tr>
                    <td>Company: 
                    </td>
                    <td>
                        <input type="text" name="Company" id="Company" placeholder="Enter company here">
                    </td>
                </tr>
                <tr>
                    <td>Name: 
                    </td>
                    <td>
                        <input type="text" name="Name" id="Name" placeholder="Enter name here">
                    </td>
                </tr>
                <tr>
                    <td>Scent Profile: 
                    </td>
                    <td>
                        <input type="text" name="ScentProfile" id="ScentProfile" placeholder="Enter first scent profile here">
                    </td>
                </tr>
                <tr>
                    <td>Market Value (USD): 
                    </td>
                    <td>
                        <input type="text" name="MarketValue(USD)" id="MarketValue(USD)" placeholder="Enter Market Value (USD) here">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Gender Leaning: 
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <input type="checkbox" name="GenderLeaning" value="Male" id="MaleGenderLeaning" /></td>
                    <td>Male</td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <input type="checkbox" name="GenderLeaning" value="Unisex" id="UnisexGenderLeaning" /></td>
                    <td>Unisex</td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <input type="checkbox" name="GenderLeaning" value="Female" id="FemaleGenderLeaning" /></td>
                    <td>Female</td>
                </tr>
                <tr>
                    <td>Lasting Time (Hours):
                    </td>
                    <td>
                        <select name="LastingTime(Hours)" id="LastingTime(Hours)">
                            <option value="0">--select--</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: right">
                        <input id="Submit1" type="submit" value="send" onclick="return checkCompany();"/>

                    </td>
                </tr>
            </table>



            <br />
            <br />
            <br />
            <br />
            <br />


            <% =msg%>
            <br />

        </div>
    </form>
</asp:Content>

