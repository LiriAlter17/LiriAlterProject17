<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Home Page.</h2>

        <br />
    <br />
    <br />
    <br />

    <table style="width:100%; border:0" border="0">

        <tr>
            <td style="width: 25%"></td>
            <td style="width: 50%">


            
        <table style="width: 100%">



            <!-- Table body -->
            <% for (int row = 1; row <= 10; row++)
                { %>
            <tr>

                <% for (int col = 1; col <= 10; col++)
                    { %>
                <td style="text-align: center"><%= row * col %></td>
                <% } %>
            </tr>
            <% } %>
        </table>


                    </td>
    <td style="width: 25%"></td>
</tr>

<table />

</asp:Content>

