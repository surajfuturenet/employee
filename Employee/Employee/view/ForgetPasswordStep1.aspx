<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Employee.Employee" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password Step 1 Form</title>

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
                    Account Help
                </h1>
                <span>Step 1</span>
            </div>
            <div class="content">
                <input name="user_name" type="text" class="input username" value="user name" onfocus="this.value=''" />
                <input name="email" type="text" class="input password" value="email" onfocus="this.value=''" />
            </div>
            <div class="footer">
                <input type="submit" name="submit" value="Next" class="button" />
            </div>
        </form>
    </div>
    <div class="gradient"></div>

</body>
</html>
