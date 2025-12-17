<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h1>Register </h1>
    <form name="formPage" method="post" runat="server">
        First name: <input type="text" name="firstname" id="firstname" placeholder="example">
        <br />
        Favorites subjects: 
        <br />
        Software engineering<input type="checkbox" name="check2" checked value="Software_engineering" id="check_1"><br />
        Math: <input type="checkbox" name="check2" value="Math" id="check_2"><br />
        Computer science<input type="checkbox" name="check2" value="Computer_science" checked id="check_3"><br />
        port: <input type="checkbox" name="check2" value="sport" id="check_4">
         <br />
        Favorites animal
        <br />
        Dog<input type="radio" name="radio1" checked value="Dog" id="radio_1"><br />
        Cat<input type="radio" name="radio1" value="Cat" id="radio_2"><br />
        Horse<input type="radio" name="radio1" value="Horse" checked id="radio_3"><br />
        Rabit<input type="radio" name="radio1" value="Rabit" id="radio_4"><br />
        Open answear
        <textarea rows="5" cols="20" name="textarea1" id="textarea1" placeholder="Enter text"></textarea>
        <br />
        <select name="age" id="age">
            <option value="0">age:</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
        </select>
        <br />
        <input id="Submit1" type="submit" value="send" />
    </form>

</asp:Content>

