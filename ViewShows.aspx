<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewShows.aspx.cs" Inherits="ViewShows" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Welcome to Our view page</h1>

        <p>Select shows by Artist:</p>
        <asp:DropDownList ID="DropDownListArtist" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListArtist_SelectedIndexChanged"></asp:DropDownList>
        
        <p>Select shows by Venue:</p>
        <asp:DropDownList ID="DropDownListVenue" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListVenue_SelectedIndexChanged"></asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridViewArtistandVennue" runat="server"></asp:GridView>

        <br />

        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/HomePage.aspx">Back Home Page</asp:HyperLink>

    </div>
    </form>
</body>
</html>
