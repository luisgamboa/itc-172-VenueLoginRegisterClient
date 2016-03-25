<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>Home Page</h1>
    <form id="form1" runat="server">
    
       <div>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Venue Login</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/FanLogin.aspx">Fan Login</asp:HyperLink>
    </div>
    </form>
</body>
</html>
