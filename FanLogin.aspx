﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FanLogin.aspx.cs" Inherits="FanLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fan Login</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>Fan Login</h1>
    <form id="form1" runat="server">
    <div>
        <table>
        <tr>
            <td>User Name</td>
            <td>
                <asp:TextBox ID="FanUserNameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="FanPasswordTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Button ID="FanLoginButton" runat="server" Text="Login" OnClick="FanLoginButton_Click" />
            </td>

             <td>
                 <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
            </td>

        </tr>
        </table>
     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FanRegistration.aspx">Registrate new fan  |  </asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/HomePage.aspx">Back Home Page</asp:HyperLink>

    
    </div>
    </form>
</body>
</html>
