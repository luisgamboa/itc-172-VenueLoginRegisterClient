<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Venue Login</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>Venue Login</h1>
    <form id="form1" runat="server">
    <div>
        <table>
        <tr>
            <td>User Name</td>
            <td>
                <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
            </td>

             <td>
                 <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
            </td>

        </tr>
        </table>
     

    
    </div>
    </form>
    <div>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/VenueRegistration.aspx">Registration    |   </asp:HyperLink>
     <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/HomePage.aspx"> Back Home Page</asp:HyperLink>
     </div>
</body>
</html>
