<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FanRegistration.aspx.cs" Inherits="FanRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>Fan Registration</h1>
    <form id="form1" runat="server">
    <div>
        <table>
        <tr>
            <td>Fan Name</td>
            <td><asp:TextBox ID="FanNameTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="FanNameRequiredFieldValidator" runat="server" ErrorMessage="Fan name requiered" ControlToValidate="FanNameTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>


        <tr>
            <td>Email</td>
            <td>
            <asp:TextBox ID="FanEmailTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="FanEmailRequiredFieldValidator" runat="server" ErrorMessage="Email requiered" ControlToValidate="FanEmailTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>User Name</td>
            <td>
            <asp:TextBox ID="FanUserNameTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
            <asp:TextBox ID="FanPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="FanPasswordRequiredFieldValidator1" runat="server" ErrorMessage="Password requiered" ControlToValidate="FanPasswordTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Confirm Password</td>
            <td>
            <asp:TextBox ID="ConfirmTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password dont match" ControlToValidate="ConfirmTextBox" ControlToCompare="FanPasswordTextBox"></asp:CompareValidator> 

            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
            </td>
            <td>
                <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
            </td>
            <td></td>
            
        </tr>
    </table>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FanLogin.aspx">Back Fan Login</asp:HyperLink>
    </div>
    </form>
</body>
</html>
