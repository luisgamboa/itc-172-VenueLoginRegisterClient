<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShow.aspx.cs" Inherits="AddShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    
    <a href="Default.aspx">Login Page</a>
    <a href="VenueRegistration.aspx">Venue Registration</a>
    <h1>Add Show:</h1>
    <form id="form1" runat="server">
    <div>
    
        
         <asp:Panel ID="Panel1" runat="server">
            
            <table id="NewShowTable"> 
                <tr>
                    <td>Show Name</td>
                    <td>
                        <asp:TextBox ID="ShowNameTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Show Date</td>
                    <td>
                        <asp:Calendar ID="ShowDateCalendar" runat="server"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>Show Time</td>
                    <td>
                        <asp:TextBox ID="TimeTextBox" runat="server" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Tickets</td>
                    <td>
                        <asp:TextBox ID="TicketsTextBox" runat="server" ></asp:TextBox></td>
                </tr>
               <tr>
                   <td></td>
                <td><asp:Button ID="SubmitButton" runat="server" Text="Save Show" OnClick="SubmitButton_Click" />
                <asp:Label ID="ResultLabel1" runat="server" Text=""></asp:Label>
                </td>
                   <td></td>
               </tr>
                </table>
             </asp:Panel>
        <table>
            <tr>
                <td>After you added a show, you can add some show details:</td>
                <td><a ID="HyperLink1" href="AddShowDetails.aspx">Go to Add Show Details page</a></td>
            </tr>
            </table>
        
    </div>
    </form>
</body>
</html>
