<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Members.aspx.cs" Inherits="Members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h2>Members.</h2>

        <%=st1 %>

    <form name="formPage" method="post" runat="server">

        <table>
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
                    <input type="text" name="lastName" id="lastName" placeholder="Enter last name here">
                </td>
            </tr>
             <tr>
                <td colspan="2" style="text-align: right">
                    <input id="Submit1" type="submit" value="send" />

                </td>
            </tr>
        </table>
    </form>

            <%=st2 %>

</asp:Content>

