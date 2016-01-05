<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/EmployeeMaster.Master" CodeBehind="ForgetPasswordStep1.aspx.cs" Inherits="Employee.view.ForgetPasswordStep1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <!--META-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Forget Password Step 1 Form</title>

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
                    Account Help
                </h1>
                <span>Step 1<br />Enter User Name Or Email</span>
                   
            </div>
            <div class="content">
                <asp:TextBox ID="user_name" runat="server" class="input username" placeholder="user name"  />
                <div>
                    <asp:Label ID="emailExist" runat="server" Font-Size="X-Small" ForeColor="#FF3300"></asp:Label>
                </div>
                <asp:TextBox ID="email" runat="server" class="input password" placeholder="email"  />
            </div>
            <div class="footer" runat="server">
                <asp:Button ID="submit" runat="server" Text="Next" class="button" OnClick="submit_Click" />
            </div>
        </form>
    </div>
    <div class="gradient"></div>

</asp:Content>