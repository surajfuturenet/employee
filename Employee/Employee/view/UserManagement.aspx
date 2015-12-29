<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="Employee.view.UserManagement" %>


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
    <li ><a href="#">Home</a></li>
    <li class="active" ><a href="#">User Management</a></li>
           
  </ul>
</div>

	<!--CONTENT-->
    <div class="content">
	

	<!--USERNAME-->

        <div class ="leftside">
        <label for="username" class="label">User Name</label>
        <input name="username" type="text" class="input username" value="User Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" />
            </div><!--END USERNAME-->
	
	<!--FIRSTNAME-->
         <div class ="leftside">
        <label for="firstname" class="label" >First Name</label>
        <input name="firstname" type="text" class="input firstname" value="First Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" /></div><!--END FIRSTNAME-->
       
    <!--LASTNAME-->
              <div class ="rightside">
        <label for="lastname" class="label">Last Name</label>
        <input name="lastname" type="text" class="input lastname" value="Last Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" /></div><!--END LASTNAME-->
	
	
	<!--EMAIL-->
                  <div class ="rightside">
        <label for="email" class="label">Email</label>
        <input name="email" type="text" class="input email" value="email" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" /></div><!--EMAIL-->
	
	
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