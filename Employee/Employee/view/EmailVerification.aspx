<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/EmployeeMaster.Master" CodeBehind="EmailVerification.aspx.cs" Inherits="Employee.view.EmailVerification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <!--META-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Email Verification</title>


    <!--STYLESHEETS-->
    <link href="/CSS/ResetPassword.css" rel="stylesheet" type="text/css" />

    <!--SCRIPTS-->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                </div><br />
                <asp:Label runat="server" ID="error"></asp:Label>
                <asp:TextBox ID="TextBox" runat="server" class="input username" value="PIN Nomber" onfocus="if (this.value==this.defaultValue) this.value = ''"
                    onblur="if (this.value=='') this.value = this.defaultValue"  />
            </div>
            <div class="footer">
                <asp:Button ID="submit" runat="server" Text="Next" class="button" OnClick="submit_Click" />
                <asp:Button ID="button" runat="server"  Text="Resend Mail" class="button2" OnClick="button_Click" />
                
            </div>
        </form>
    </div>
    <div class="gradient"></div>

</asp:Content>
