<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FormAuthenticationExample.login" %>

<html>
<body>
    <form id="loginForm" runat="server" defaultbutton="loginButton" defaultfocus="passwordTextBox">
        User name: <asp:TextBox ID="userNameTextBox" runat="server">user1</asp:TextBox> <br />
        Password: <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox> <br />
        <asp:Button ID="loginButton" runat="server" Text="Login" OnClick="loginButton_Click" /> <br />
    </form>
    <asp:Label ID="errorMessageLabel" runat="server" ForeColor="Red"></asp:Label>
</body>
</html>