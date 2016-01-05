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

            <div class="header" >
                <h1>
                   Reset Your Password
                </h1>
                <span>Enter your new password here.</span><br />
                <asp:Label ID="CheckCorrect" runat="server" Font-Size="X-Small" ForeColor="#FF3300" ></asp:Label>
            </div>

            <div class="content">
                <asp:TextBox runat="server" id="PaswordTextBox" class="input password" type="password" placeholder="Password" onkeypress="CapsLockPassword(event)" ></asp:TextBox><!--END PASSWORD-->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PaswordTextBox" ErrorMessage="RequiredFieldValidator" Font-Size="X-Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <div id="capslock1" style="visibility:hidden">
        
       
        <span>Caps Lock is on.</span></div> 
	<!--CONFIRMPASSWORD-->
                
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PaswordTextBox" ErrorMessage="Password must contain 8 characters and at least one number, one letter and one unique character such as !#$%&amp;? &quot;" Font-Size="X-Small" ForeColor="#FF3300" ValidationExpression="^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*\d)(?=.*[!#$%&amp;? &quot;]).*$"></asp:RegularExpressionValidator>
        <asp:TextBox runat="server" id="CPaswordTextBox" class="input password" type="password" placeholder="Confirm Password" onkeypress="CapsLockCPassword(event)" ></asp:TextBox><!--END CONFIRMPASSWORD-->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="CPaswordTextBox" ErrorMessage="RequiredFieldValidator" Font-Size="X-Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="CPaswordTextBox" ErrorMessage="Password must contain 8 characters and at least one number, one letter and one unique character such as !#$%&amp;? &quot;" Font-Size="X-Small" ForeColor="#FF3300" ValidationExpression="^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*\d)(?=.*[!#$%&amp;? &quot;]).*$"></asp:RegularExpressionValidator>
        <div id="capslock2" style="visibility:hidden">
        
       
        <span>Caps Lock is on.</span></div> 
            </div>
            <div class="footer">
                <asp:Button ID="submit" class="button" runat="server" Text="Reset Password" OnClick="submit_Click" />
            </div>
        </form>
    </div>
    <div class="gradient"></div>
</body>
</html>
