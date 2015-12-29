<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Employee.Employee" %>

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
<form name="signup-form" class="signup-form" action="" method="post">

	<!--HEADER-->
    <div class="header">
    <!--TITLE--><h1>Create Account
		
	</h1><!--END TITLE-->
	    

		
    <!--DESCRIPTION--><span>Fill out the form below to sign up.</span><!--END DESCRIPTION-->
    </div>
    <!--END HEADER-->
	
	<!--CONTENT-->
    <div class="content">
	
	<!--USERNAME--><input name="username" type="text" class="input username" value="User Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" /><!--END USERNAME-->
	
	<!--FIRSTNAME--><input name="firstname" type="text" class="input firstname" value="First Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" /><!--END FIRSTNAME-->

    <!--LASTNAME--><input name="lastname" type="text" class="input lastname" value="Last Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" /><!--END LASTNAME-->
	
	 <!--EMAIL--><input name="email" type="text" class="input email" value="Email" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" /><!--END EMAIL-->
	
	<!--PASSWORD--><input name="password" type="text" class="input password" value="Password" onfocus="this.setAttribute('type','password'); if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value==''){ this.value = this.defaultValue;this.setAttribute('type','text');}" /><!--END PASSWORD-->

	<!--CONFIRMPASSWORD--><input name="confirmpassword" type="text" class="input password" value="Confirm Password" onfocus="this.setAttribute('type','password'); if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value==''){ this.value = this.defaultValue;this.setAttribute('type','text');}" /><!--END CONFIRMPASSWORD-->
	
	<!--USER ROLE--><select id="userrole" name="userrole" class="input userrole">
  <option class="input" value="volvo">Admin</option>
  <option class="input" value="saab">User</option>

</select><!--USER ROLE-->
    </div>
	
	
    <!--END CONTENT-->
    
    <!--FOOTER-->
    <div class="footer">
    <!--SIGNIN BUTTON--><input type="submit" name="submit" value="SignIn" class="button" /><!--END SIGNIN BUTTON-->
	    
    </div>
    <!--END FOOTER-->

</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->

<!--GRADIENT--><div class="gradient"></div><!--END GRADIENT-->

</body>
</html>