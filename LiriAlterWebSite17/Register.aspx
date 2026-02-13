<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <h1>Register.</h1>

      
    <form name="formPage" method="post" runat="server">

        <table>
             <tr>
                <td>Email: 
                </td>
                <td>
                    <input type="text" name="email" id="email" placeholder="Enter email here">
                </td>
            </tr>
             <tr>
                <td>Password: 
                </td>
                <td>
                    <input type="text" name="password" id="password" placeholder="Enter password here">
                </td>
            </tr>
            <tr>
                <td>First name: 
                </td>
                <td>
                    <input type="text" name="firstName" id="firstName" placeholder="Enter first name here">
                </td>
            </tr>
            <tr>
                <td>Last name: 
                </td>
                <td>
                    <input type="text" name="lastName" id="lastName" placeholder="Enter lant name here">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    Hobbies: 
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <input type="checkbox" name="CB" checked value="Football" id="FootballCB"/></td>
                <td>Football</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <input type="checkbox" name="CB" value="Basketdall" id="BasketballCB"/></td>
                <td>Basketball</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <input type="checkbox" name="CB" value="Surfing" id="SurfingCB"/></td>
                <td>Surfing</td>
            </tr>
            <tr>
                <td colspan="2">Favorites Social media: 
                </td>
            </tr>

            <tr>
                <td style="padding-left:20px">Instergam</td>
                <td>
                    <input type="radio" checked  name="Social" value="Instergam" id="InstergamRB"/></td>
            </tr>

            <tr>
                <td style="padding-left:20px">Facebook</td>
                <td>
                    <input type="radio" name="Social" value="Facebook" id="FacebookRB"/></td>
            </tr>

            <tr>
                <td style="padding-left:20px">Tiktok</td>
                <td>
                    <input type="radio" name="Social" value="Tiktok" id="TiktokRB"/></td>
            </tr>

            <tr>
                <td>Age:
                </td>
                <td>
                    <select name="age" id="age">
                        <option value="0">--select--</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                    </select>
                </td>
            </tr>


            <tr>
                <td style="vertical-align: top">Tell something abote yourself:
                </td>
                <td>
                    <textarea rows="5" cols="20" name="freeTextTA" id="freeTextTA" placeholdetextarea1r="Enter text"></textarea>
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


         
        



    </form>

</asp:Content>

