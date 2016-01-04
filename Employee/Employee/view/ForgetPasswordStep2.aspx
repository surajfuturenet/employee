<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPasswordStep2.aspx.cs" Inherits="Employee.view.ForgetPasswordStep2" %>

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
                <span> Step 2 - Answer at least 2 questions</span><br />
                <asp:Label runat="server" id="error"></asp:Label>
            </div>
            <div class="content">
                <div class="header2">
                    <asp:Label runat="server" id="Q1"></asp:Label>
                </div>
                
                <asp:TextBox ID="TextBox1" runat="server" class="input username" value="Answer" onfocus="if (this.value==this.defaultValue) this.value = ''"
                    onblur="if (this.value=='') this.value = this.defaultValue" />

                <div class="header2">
                    <asp:Label runat="server" id="Q2"></asp:Label>
                </div>
                <asp:TextBox ID="TextBox2" runat="server" class="input username" value="Answer" onfocus="if (this.value==this.defaultValue) this.value = ''"
                    onblur="if (this.value=='') this.value = this.defaultValue" />
                <div class="header2">
                    <asp:Label runat="server" id="Q3"></asp:Label>
                </div>
                <asp:TextBox ID="TextBox3" runat="server" class="input username" value="Answer" onfocus="if (this.value==this.defaultValue) this.value = ''"
                    onblur="if (this.value=='') this.value = this.defaultValue" />
            </div>
            <div class="footer">
                <asp:Button ID="Button1" runat="server" Text="Next" class="button" OnClick="Button1_Click" />
            </div>
        </form>
    </div>
    <div class="gradient"></div>

</body>
</html>
