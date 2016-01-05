<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/EmployeeMaster.Master" CodeBehind="Login.aspx.cs" Inherits="Employee.view.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



<!--META-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login Form</title>

<!--STYLESHEETS-->
<link href="/CSS/Login.css" rel="stylesheet" type="text/css" />

<!--SCRIPTS-->
<script type="text/javascript" src="/scripts/jquery.min.js"></script>
<!--Slider-in icons-->
<script type="text/javascript">
$(document).ready(function() {
	$(".username").focus(function() {
		$(".user-icon").css("left","-48px");
	});
	$(".username").blur(function() {
		$(".user-icon").css("left","0px");
	});
	
	$(".password").focus(function() {
		$(".pass-icon").css("left","-48px");
	});
	$(".password").blur(function() {
		$(".pass-icon").css("left","0px");
	});
});
</script>

    <script type="text/javascript">
function CapsLock(e){
 kc = e.keyCode?e.keyCode:e.which;
 sk = e.shiftKey?e.shiftKey:((kc == 16)?true:false);
 if(((kc >= 65 && kc <= 90) && !sk)||((kc >= 97 && kc <= 122) && sk))
     document.getElementById('capslock').style.visibility = 'visible';
 else
     document.getElementById('capslock').style.visibility = 'hidden';
}
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<!--WRAPPER-->
<div id="wrapper">

	<!--SLIDE-IN ICONS-->
    <div class="user-icon"></div>
    <div class="pass-icon"></div>
    <!--END SLIDE-IN ICONS-->

<!--LOGIN FORM-->
<form name="login-form" runat="server" class="login-form"  method="post">

	<!--HEADER-->
    <div class="header">
    <!--TITLE--><h1>Login Form
		<!--REGISTER BUTTON--><a href="/view/Signup.aspx"  class="register" >Register Now</a><!--END REGISTER BUTTON-->
	</h1><!--END TITLE-->
	    

				
    <!--DESCRIPTION--><span>Fill out the form below to login.</span><br /><asp:Label ID="InfoLabel" runat="server" ></asp:Label><!--END DESCRIPTION-->
    </div>
    <!--END HEADER-->
	
	<!--CONTENT-->
    <div class="content">
	<!--USERNAME--><asp:TextBox runat="server" id="UnameTextBox" class="input username" placeholder="User Name" ></asp:TextBox>
        
        <!--END USERNAME-->
    <!--PASSWORD--> <asp:TextBox runat ="server" id="Password" type="password" class="input password" placeholder="Password" onkeypress="CapsLock(event)"  ></asp:TextBox><!--END PASSWORD-->
    <div id="capslock" style="visibility:hidden">
        
       
        <span>Caps Lock is on.</span></div> 
    </div>
    <!--END CONTENT-->
    
    <!--FOOTER-->
    <div class="footer">
    <!--LOGIN BUTTON-->
        <asp:Button id="login" Text="Login" class="button" runat="server" OnClick="login_Click" />
        <!--END LOGIN BUTTON-->
	    <!--FORGET PASSWORD--><a href="/view/ForgetPasswordStep1.aspx" class="forgotpassword" >Forgot your password?</a><!--END FORGET PASSWORD-->
    </div>
    <!--END FOOTER-->

</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->

<!--GRADIENT--><div class="gradient"></div><!--END GRADIENT-->


</asp:Content>
