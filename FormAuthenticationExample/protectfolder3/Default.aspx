﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FormAuthenticationExample.protectfolder3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h2>This is protected page. Only 'user3' or user with manager role can access this page.</h2>
    current user: <asp:Label ID="lblInfo" runat="server" />
    <br /><br />
    <form id="form1" runat="server">
        <asp:Button ID="logoutButton" runat="server" Text="Logout" OnClick="logoutButton_Click" />
    </form>
    <br /><br />
    <a href="/Default.aspx">Home</a>

</body>
</html>
