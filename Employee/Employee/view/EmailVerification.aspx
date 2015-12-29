<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Employee.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!--META-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Verify Email Form</title>

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
                    Verify Email
                </h1>
            </div>
            <div class="content">
                <div class="header2">
                    <span>Enter the PIN Nomber which we sent your Mail</span>
                </div>
                <input name="user_name" type="text" class="input username" value="PIN Nomber" onfocus="this.value=''" />
            </div>
            <div class="footer">
                <input type="submit" name="submit" value="Next" class="button" />
                <input type="button" name="Resend" value="Resend Mail" class="button2" />
                
            </div>
        </form>
    </div>
    <div class="gradient"></div>

</body>
</html>