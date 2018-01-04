<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FormAuthenticationExample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>This is Public Home Page</h1>
    <br /><br />
    <h2>Page Access Control</h2>
    <a href="protectpage1.aspx">All logined users can access this page</a>
    <br /><br />
    <a href="protectpage2.aspx">Only 'user3' or user with manager role can access this page.</a>
    <br /><br />
    <h2>Folder Access Control</h2>
    <a href="protectfolder1/Default.aspx">All logined users can access pages under folder 'protectfolder1'.</a>
    <br /><br />
    <a href="protectfolder2/Default.aspx">Only user with admin role can access pages under folder 'protectfolder2'.</a>
    <br /><br />
    <a href="protectfolder3/Default.aspx">Only 'user3' or user with manager role can access pages under folder 'protectfolder3'.</a>
    <br /><br />
    <a href="protectfolder4/Default.aspx">Only user with both staff (i.e. not student) and cs roles can access pages under folder 'protectfolder4'.</a>
    <br /><br />
    <hr />
    <b>
    Test users as below (pwd is 123123)<br />
    user1: admin and manager roles<br />
    user2: admin role<br />
    user3: no role<br />
    user4: student and cs roles<br />
    user5: staff and cs roles<br />
    </b>

</body>
</html>
