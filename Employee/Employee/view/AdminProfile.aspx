﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Employee.view.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">



<!--META-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Profile</title>

<!--STYLESHEETS-->
<link href="/CSS/profile.css" rel="stylesheet" type="text/css" />

<!--SCRIPTS-->

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
<form name="profile-form" class="profile-form" action="" method="post">

	<!--HEADER-->
    <div class="header">
    <!--TITLE--><h1>User Name
		
	</h1><!--END TITLE-->
	    

		
    
    </div>
    <!--END HEADER-->
	
    <div class="container">
                   
  <ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="#">Home</a></li>
    <li><a href="#">User Management</a></li>
           
  </ul>
</div>

	<!--CONTENT-->
    <div class="content">
	

	<!--USERNAME-->
        <label for="username" class="label">User Name</label>
        <input name="username" type="text" class="input username" value="User Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" /><!--END USERNAME-->
	<br />
	<!--FIRSTNAME-->
        <label for="firstname" class="label" >First Name</label>
        <input name="firstname" type="text" class="input firstname" value="First Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" /><!--END FIRSTNAME-->
        <br />
    <!--LASTNAME-->
        <label for="lastname" class="label">Last Name</label>
        <input name="lastname" type="text" class="input lastname" value="Last Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" /><!--END LASTNAME-->
	<br />
	
	<!--PASSWORD-->
        <label for="password" class="label">Password</label>
        <input name="password" type="text" class="input password" value="Password" onfocus="this.setAttribute('type','password'); if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value==''){ this.value = this.defaultValue;this.setAttribute('type','text');}" /><!--END PASSWORD-->
        <br />
	<!--CONTACT NUMBER-->
        <label for="contact" class="label">Contact Number</label>
        <input name="contact" type="text" class="input contact" value="Contact Number" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" /><!--CONTACT NUMBER-->
	<br />
	
    </div>
	
	
    <!--END CONTENT-->
    
    <!--FOOTER-->
    <div class="footer">
    <!--SIGNIN BUTTON--><input type="submit" name="submit" value="Update" class="button" /><!--END SIGNIN BUTTON-->
	    
    </div>
    <!--END FOOTER-->

</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->

<!--GRADIENT--><div class="gradient"></div><!--END GRADIENT-->

</body>
</html>