<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Employee.view.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">



<!--META-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sign up</title>

<!--STYLESHEETS-->
<link href="/CSS/signup.css" rel="stylesheet" type="text/css" />

<!--SCRIPTS-->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
<!--Slider-in icons-->
<script type="text/javascript">
$(document).ready(function() {
	
});
</script>

</head>
<body>

<!--WRAPPER-->
<div id="wrapper">

	

<!--LOGIN FORM-->
<form name="signup-form" runat="server" class="signup-form" method="post">

	<!--HEADER-->
    <div class="header">
    <h1>Create Account</h1>
    <!--DESCRIPTION--><span>Fill out the form below to sign up.</span><!--END DESCRIPTION--></br>
        
    </div>
    <div class="headerRed">
        <span><asp:Label ID="CheckCorrect" runat="server" Text="Label"></asp:Label></span>
    </div>
    <div class="content">

	<!--USERNAME--><asp:TextBox runat="server" id="UnameTextBox" class="input username" value="User Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
        
        <!--END USERNAME-->
	
	<!--FIRSTNAME--><asp:TextBox runat="server" id="FnameTextBox" class="input firstname" value="First Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox><!--END FIRSTNAME-->

    <!--LASTNAME--> <asp:TextBox runat="server" id="LnameTextBox" class="input lastname" value="Last Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox><!--END LASTNAME-->
	
	 <!--EMAIL--><asp:TextBox runat="server" id="Email" name="email" type="text" class="input email" value="Email" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" /><!--END EMAIL-->
	
	<!--PASSWORD--><asp:TextBox runat="server" id="PaswordTextBox" class="input password" value="Password" onfocus="this.setAttribute('type','password'); if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value==''){ this.value = this.defaultValue;this.setAttribute('type','text');}" ></asp:TextBox><!--END PASSWORD-->

	<!--CONFIRMPASSWORD--><asp:TextBox runat="server" id="CPaswordTextBox" class="input password" value="Confirm Password" onfocus="this.setAttribute('type','password'); if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value==''){ this.value = this.defaultValue;this.setAttribute('type','text');}" ></asp:TextBox><!--END CONFIRMPASSWORD-->

        <!--CONTACT--> <asp:TextBox runat="server" id="ContactNo" class="input lastname" value="Contact Nomber" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox><!--END Contact-->
	
	<%--<!--USER ROLE--><asp:DropDownList class="input userrole" runat="server" ID="UserRole">
                <asp:ListItem class="input" Value="admin">Admin</asp:ListItem>       
                <asp:ListItem class="input" Value="user">User</asp:ListItem>  
            </asp:DropDownList><!--USER ROLE-->--%>
    </div>
	
	
    <!--END CONTENT-->
    
    <!--FOOTER-->
    <div class="footer">
    <asp:Button id="sign" Text="Create Account" class="button" runat="server" OnClick="sign_Click" />
	    
    </div>
    <!--END FOOTER-->

</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->

<!--GRADIENT--><div class="gradient"></div><!--END GRADIENT-->

</body>
</html>