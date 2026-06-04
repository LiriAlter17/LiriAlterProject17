<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type="text/javascript">

        function validateFields() {

            if (document.getElementById("email").value == '' ) {
                alert('email is invalid');
                return false;
            }
            if (document.getElementById("password").value == '') {
                alert('password is invalid');
                return false;
            }

        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>Login.</h2>


    <form name="LoginPage" method="post" runat="server"> 
         
    <table>
     <tr> 
        <td>Email: 
        </td>
        <td>
            <input type="email" name="email" id="email" placeholder="Enter email here">
        </td>
    </tr>
     <tr>
        <td>Password: 
        </td>
        <td>
            <input type="password"  name="password" id="password" placeholder="Enter password here">
        </td>
    </tr>
         <tr>
     <td colspan="2" style="text-align: right">
         <input id="Submit1" type="submit" value="send" onclick="return validateFields()" />

     </td>
 </tr>
        </table>


    <% =msg1%>


        </form>


</asp:Content>

