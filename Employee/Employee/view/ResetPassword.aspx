<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Employee.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!--META-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Password Reset Form</title>

    <!--STYLESHEETS-->
    <link href="/CSS/ResetPassword.css" rel="stylesheet" type="text/css" />

    <!--SCRIPTS-->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>


</head>
<body>

    <div id="wrapper">

        <form name="login-form" class="login-form" id="form1" runat="server">

            <div class="header">
                <h1>
                   Reset Your Password
                </h1>
                <span>Enter your new password here.</span>
            </div>

            <div class="content">
                <input name="password" type="text" class="input username" value="password" onfocus="this.value=''" />
                <input name="confirm_password" type="text" class="input password" value="confirm Password" onfocus="this.value=''" />
            </div>
            <div class="footer">
                <input type="submit" name="submit" value="Reset Password" class="button" />
            </div>
        </form>
    </div>
    <div class="gradient"></div>

</body>
</html>
