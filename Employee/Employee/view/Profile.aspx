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
<link href = "/CSS/profile.css" rel="stylesheet" type="text/css" />
 

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
    <!--TITLE--><h1><asp:Label runat="server" ID="User"></asp:Label><br />
		
        <asp:Label runat="server" ID="error" class="error"></asp:Label>
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
     
        <asp:TextBox runat="server" id="UnameTextBox" class="input username" value="User Name" ></asp:TextBox>
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
	<!--CONTACT NUMBER-->
        <asp:Label runat="server" ID="ContactNumber"></asp:Label><br />
               
        
               
        <asp:TextBox runat="server" id="CnumberTextBox" class="input contact" value="Contact Number" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CnumberTextBox" ErrorMessage="Invalid Number" ValidationExpression="\(?\d{3}\)?-? *\d{3}-? *-?\d{4}" Font-Size="X-Small" ForeColor="Red"></asp:RegularExpressionValidator>
        <!--CONTACT NUMBER-->
	<br />
        <asp:Label runat="server" ID="Email" Text ="Email"></asp:Label><br />

        <asp:TextBox runat="server" id="EmailTextBox" class="input email" value="Email" ></asp:TextBox>
	
    </div>
	
	
    <!--END CONTENT-->
    
    <!--FOOTER-->
    <div class="footer">
    <!--SIGNIN BUTTON-->
        <asp:Button id="update" Text="Update" class="button" runat="server" OnClick="update_Click" />
        <!--END SIGNIN BUTTON-->
	    
    </div>
    <!--END FOOTER-->

</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->

<!--GRADIENT--><!--END GRADIENT-->

</body>
</html>