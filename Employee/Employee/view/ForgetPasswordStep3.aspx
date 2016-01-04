<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPasswordStep3.aspx.cs" Inherits="Employee.view.ForgetPasswordStep3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!--META-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Forget Password Step 3 Form</title>

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
                <span> Step 3</span><br />
                <asp:Label runat="server" ID="error"></asp:Label>
            </div>
            <div class="content" runat="server">
                <div class="header2">
                    <span>Enter the PIN Nomber which we sent your Mail</span>
                </div>
                <asp:TextBox ID="TextBox1" runat="server" class="input username" value="PIN Number" onfocus="if (this.value==this.defaultValue) this.value = ''"
                    onblur="if (this.value=='') this.value = this.defaultValue" />
            </div>
            <div class="footer" runat="server">
                
                <asp:Button ID="submit" runat="server" name="submit" Text="Next" class="button" OnClick="submit_Click" />
                <asp:Button ID="button" runat="server" name="Resend" Text="Resend Mail" class="button2" />
                
            </div>
        </form>
    </div>
    <div class="gradient"></div>

</body>
</html>
