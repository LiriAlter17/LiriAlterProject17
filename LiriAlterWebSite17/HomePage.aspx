<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <h2>Home Page.</h2>

    <br />
    <br />
    <br />
    <br />







    <table style="width: 500px; " >



        <!-- Table body -->
        <% for (int row = 1; row <= 10; row++)
            { %>

        <tr style="border: 0">

            <% for (int col = 1; col <= 10; col++)
                {

                    if (row == 1 || col == 1)
                    {
            %>


            <td style="text-align: center; background-color:darkcyan; border: 1px solid #000000"><%= row * col %></td>


            <%

                }
                else
                {
            %>


            <td style="text-align: center; border: 1px solid #000000"><%= row * col %></td>


            <%
                    }
                } %>
        </tr>
        <% } %>
    </table>














</asp:Content>

