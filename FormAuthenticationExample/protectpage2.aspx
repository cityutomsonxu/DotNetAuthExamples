<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="protectpage2.aspx.cs" Inherits="FormAuthenticationExample.protectpage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h2>This is protected page. all logined users can access this page.</h2>
    current user: <asp:Label ID="lblInfo" runat="server" />
    <br /><br />
    <form id="form1" runat="server">
        <asp:Button ID="logoutButton" runat="server" Text="Logout" OnClick="logoutButton_Click" />
    </form>
    <br /><br />
    <a href="/Default.aspx">Home</a>
</body>
</html>
