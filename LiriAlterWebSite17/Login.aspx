<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>Login.</h2>


    <form name="LoginPage" method="post" runat="server"> 
         
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
     <td colspan="2" style="text-align: right">
         <input id="Submit1" type="submit" value="send" />

     </td>
 </tr>
        </table>


    <% =msg1%>


        </form>


</asp:Content>

