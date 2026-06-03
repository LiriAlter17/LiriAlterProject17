<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Fragrances.aspx.cs" Inherits="Fragrances" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h2>Fragrances.</h2>

    <%=st1 %>

<form name="formPage1" method="post" runat="server">
    <hr />
    <label>Search for a fragrance on the list.</label>
    <br />
    <table>
        <tr>
            <td>Company: 
            </td>
            <td>
                <input type="text" name="Company1" id="Company1" placeholder="Enter company here">
            </td>
        </tr>
        <tr>
            <td>Name: 
            </td>
            <td>
                <input type="text" name="Name1" id="Name1" placeholder="Enter name here">
            </td>
        </tr>
         <tr>
            <td colspan="2" style="text-align: right">
                <input id="Submit1" type="submit" value="send" />

            </td>
        </tr>
    </table>

        <%=st2 %>

    <br />
    <hr />
    <br />
    <br />


    <div  name="inputDiv" id="inputDiv" style="<%= AddFragrancesVisible %>">
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
            <td colspan="2">
                Gender Leaning: 
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <input type="checkbox" name="GenderLeaning" value="Male" id="MaleGenderLeaning"/></td>
            <td>Male</td>
        </tr>
        <tr>
            <td style="text-align: right">
                <input type="checkbox" name="GenderLeaning" value="Unisex" id="UnisexGenderLeaning"/></td>
            <td>Unisex</td>
        </tr>
        <tr>
            <td style="text-align: right">
                <input type="checkbox" name="GenderLeaning" value="Female" id="FemaleGenderLeaning"/></td>
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
                <input id="Submit1" type="submit" value="send" />

            </td>
        </tr>
    </table>



    <br />
    <br />
    <br />
    <br />
    <br />


    <% =msg%> <br />

    </div>
     
    



</form>


</asp:Content>

