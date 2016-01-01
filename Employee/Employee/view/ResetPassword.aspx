<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Employee.view.ResetPassword" %>
<script type="text/javascript" >
    
</script>
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
    <div id="wrapper" >

        <form name="login-form" class="login-form" id="form1" runat="server">

            <div class="header">
                <h1>
                   Reset Your Password
                </h1>
                <span>Enter your new password here.</span>
            </div>

            <div class="content">
                <asp:TextBox ID="UserName" class="input password"  value="Password" runat="server" onfocus="this.setAttribute('type','password'); if (this.value==this.defaultValue) this.value = ''"
                    onblur="if (this.value==''){ this.value = this.defaultValue;this.setAttribute('type','text');}"/>
               <asp:RegularExpressionValidator id="RegularExpressionValidator1" 
                     ControlToValidate="UserName"
                     ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{5,15})$"
                     Display="Static"
                     EnableClientScript="false"
                     ErrorMessage="Password must between 5 to 15 contain numeric values and Alphabetic Characters"
                     runat="server"/>

                <asp:TextBox ID="Password" class="input password"  value="Confirm Password" runat="server" onfocus="this.setAttribute('type','password'); if (this.value==this.defaultValue) this.value = ''"
                    onblur="if (this.value==''){ this.value = this.defaultValue;this.setAttribute('type','text');}" />
            </div>
            <div class="footer">
                <asp:Button ID="submit" class="button" runat="server" Text="Reset Password" />
            </div>
        </form>
    </div>
    <div class="gradient"></div>
</body>
</html>
