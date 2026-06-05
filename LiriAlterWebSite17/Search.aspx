<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Search.</h2>

       
        
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



    <br />
    <br />
     
    
            <%=st2 %>



</form>



</asp:Content>

