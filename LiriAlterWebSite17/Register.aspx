<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <h1>Register.</h1>

    
    

    <form name="formPage" method="post" runat="server">

        <div  name="inputDiv" id="inputDiv">

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
                    <input type="text" name="lastName" id="lastName" placeholder="Enter last name here">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    Fragrance Notes you find good smelling:
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <input type="checkbox" name="CB" checked value="Vanilla" id="VanillaCB"/></td>
                <td>Vanilla</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <input type="checkbox" name="CB" value="Bergamot" id="BergamotCB"/></td>
                <td>Bergamot</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <input type="checkbox" name="CB" value="Sandalwood" id="SandalwoodCB"/></td>
                <td>Sandalwood</td>
            </tr>
                        <tr>
    <td style="text-align: right">
        <input type="checkbox" name="CB" value="Jasmine" id="JasmineCB"/></td>
    <td>Jasmine</td>
</tr>
            <tr>
    <td style="text-align: right">
        <input type="checkbox" name="CB" value="Musk" id="MuskCB"/></td>
    <td>Musk</td>
</tr>
            <tr>
    <td style="text-align: right">
        <input type="checkbox" name="CB" value="Patchouli" id="PatchouliCB"/></td>
    <td>Patchouli</td>
</tr>
            <tr>
    <td style="text-align: right">
        <input type="checkbox" name="CB" value="Oud" id="OudCB"/></td>
    <td>Oud</td>
</tr>
            <tr>
    <td style="text-align: right">
        <input type="checkbox" name="CB" value="Rose" id="RoseCB"/></td>
    <td>Rose</td>
</tr>
            <tr>
    <td style="text-align: right">
        <input type="checkbox" name="CB" value="Amber" id="AmberCB"/></td>
    <td>Amber</td>
</tr>
            <tr>
    <td style="text-align: right">
        <input type="checkbox" name="CB" value="Vetiver" id="VetiverCB"/></td>
    <td>Vetiver</td>
</tr>
            <tr>
                <td colspan="2">Gender: 
                </td>
            </tr>
            <tr>
                <td style="padding-left:20px">Female</td>
                <td>
                    <input type="radio" name="Gender" value="Female" id="FemaleRB"/></td>
            </tr>

            <tr>
                <td style="padding-left:20px">Male</td>
                <td>
                    <input type="radio" name="Gender" value="Male" id="MaleRB"/></td>
            </tr>

            <tr>
                <td style="padding-left:20px">Other</td>
                <td>
                    <input type="radio" name="Gender" value="Other" id="OtherRB"/></td>
            </tr>

            <tr>
                <td>Age:
                </td>
                <td>
                    <select name="age" id="age">
                        <option value="">--select--</option>
                        <option value="-12">-12</option>
                        <option value="13-17">13-17</option>
                        <option value="18+">18+</option>
                    </select>
                </td>
            </tr>


            <tr>
                <td style="vertical-align: top">Tell us what's your favorite fragrance and 3 notes from it:
                </td>
                <td>
                    <textarea rows="5" cols="100" name="freeTextTA" id="freeTextTA" placeholder="Example: Fragrance Name - note 1, note 2, note 3."></textarea>
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

