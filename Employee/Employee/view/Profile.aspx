<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Employee.view.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">



<!--META-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  <link rel="stylesheet" href="/CSS/bootstrap.min.css" />
  <script src="/scripts/jquery.min.js"></script>
  <script src="/scripts/bootstrap.min.js"></script>
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
<form name="profile-form" runat="server" class="profile-form"  method="post">

	<!--HEADER-->
    <div class="header">
    <!--TITLE--><h1><asp:Label runat="server" ID="User"></asp:Label>
		
	</h1><!--END TITLE-->
	    

		
    
    </div>
    <!--END HEADER-->
	
 <div class="container">
                   
  <ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="#">Home</a></li>
           
  </ul>
</div>

	<!--CONTENT-->
    <div class="content">
	

	<!--USERNAME-->
        <asp:Label runat="server" ID="UserName"></asp:Label><br />
     
        <asp:TextBox runat="server" id="UnameTextBox" class="input username" value="User Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
          <!--END USERNAME-->
	<br />
	<!--FIRSTNAME-->
        <asp:Label runat="server" ID="FirstName"></asp:Label><br />
        
         <asp:TextBox runat="server" id="FnameTextBox" class="input firstname" value="First Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
        <!--END FIRSTNAME-->
        <br />
    <!--LASTNAME-->
       <asp:Label runat="server" ID="LastName"></asp:Label><br />
       <asp:TextBox runat="server" id="LnameTextBox" class="input lastname" value="Last Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
        <!--END LASTNAME-->
	<br />
	
	<!--PASSWORD-->
       <asp:Label runat="server" ID="Password"></asp:Label><br />
       <asp:TextBox runat="server" id="PaswordTextBox" class="input password" value="Password" onfocus="this.setAttribute('type','password'); if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value==''){ this.value = this.defaultValue;this.setAttribute('type','text');}" ></asp:TextBox>
        
        <!--END PASSWORD-->
        <br />
	<!--CONTACT NUMBER-->
        <asp:Label runat="server" ID="ContactNumber"></asp:Label><br />
               
        <asp:TextBox runat="server" id="CnumberTextBox" class="input contact" value="Contact Number" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
        <!--CONTACT NUMBER-->
	<br />
	
    </div>
	
	
    <!--END CONTENT-->
    
    <!--FOOTER-->
    <div class="footer">
    <!--SIGNIN BUTTON-->
        <asp:Button id="update" Text="Update" class="button" runat="server" />
        <!--END SIGNIN BUTTON-->
	    
    </div>
    <!--END FOOTER-->

</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->

<!--GRADIENT--><div class="gradient"></div><!--END GRADIENT-->

</body>
</html>