<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateUser.aspx.cs" Inherits="Employee.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">



<!--META-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Update User</title>

<!--STYLESHEETS-->
<link href="/CSS/updateuser.css" rel="stylesheet" type="text/css" />

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
<form name="updateuser-form" class="updateuser-form" action="" method="post">

	<!--HEADER-->
    <div class="header">
    <!--TITLE--><h1>Update User
		
	</h1><!--END TITLE-->
	    

		
    
    </div>
    <!--END HEADER-->
	
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
	 <!--EMAIL-->
        <label for="email" class="label">Email</label>
        <input name="email" type="text" class="input email" value="Email" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" /><!--END EMAIL-->
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
	<!--USER ROLE-->
        <label for="userrole" class="label" >User Role</label><br />
        <select id="userrole" name="userrole" class="input userrole">
  <option class="input" value="volvo">Admin</option>
  <option class="input" value="saab">User</option>

</select><!--USER ROLE-->
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