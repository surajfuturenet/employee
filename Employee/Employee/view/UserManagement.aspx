<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="Employee.view.UserManagement" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">



<!--META-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  
 <link rel="stylesheet" href="/CSS/bootstrap.min.css" />
  <script src="/scripts/jquery.min.js"></script>
  <script src="/scripts/bootstrap.min.js"></script>
<title>User Management</title>

<!--STYLESHEETS-->
<link href="/CSS/usermanagement.css" rel="stylesheet" type="text/css" />

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
<form name="profile-form" runat="server" class="profile-form" action="" method="post">

	<!--HEADER-->
    <div class="header">
    <!--TITLE--><h1><asp:Label runat="server" ID="User"></asp:Label>
		
	</h1><!--END TITLE-->
	    

		
    
    </div>
    <!--END HEADER-->
	
    <div class="container">
                   
  <ul class="nav nav-tabs" role="tablist">
    <li ><asp:HyperLink runat="server" href="/view/AdminProfile.aspx">Home</asp:HyperLink></li>
    <li class="active" ><asp:HyperLink runat="server">User Management</asp:HyperLink></li>
           
  </ul>
</div>

	<!--CONTENT-->
    <div class="content">
	
        <!--FIRSTNAME-->
         <div class ="leftside">

        

        <asp:Label runat="server" ID="FirstName"></asp:Label><br />
        
         <asp:TextBox runat="server" id="FnameTextBox" class="input firstname" value="First Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
       </div><!--END FIRSTNAME-->
    <!--LASTNAME-->
              <div class ="rightside">

        <asp:Label runat="server" ID="LastName"></asp:Label><br />
       <asp:TextBox runat="server" id="LnameTextBox" class="input lastname" value="Last Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>


              </div><!--END LASTNAME-->
	
        <!--USERNAME-->

        <div class ="leftside">
        <asp:Label runat="server" ID="UserName"></asp:Label><br />
     
        <asp:TextBox runat="server" id="UnameTextBox" class="input username" value="User Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
            </div><!--END USERNAME-->
	
	<!--EMAIL-->
                  <div class ="rightside">
       
        <asp:Label runat="server" ID="Email"></asp:Label><br />

        <asp:TextBox runat="server" id="EmailTextBox" class="input email" value="Email" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
                  </div><!--EMAIL-->
	
	
    </div>
	
	
    <!--END CONTENT-->
    
    <!--FOOTER-->
    <div class="footer">
    
        <!--CLEAR BUTTON--><asp:Button id="clear" Text="Clear" class="button" runat="server" /><!--END CLEAR BUTTON-->
    <!--SEARCH BUTTON-->
        <asp:Button id="search" Text="Search" class="button" runat="server" />
        <!--END SEARCH BUTTON-->
    
    </div>
    <!--END FOOTER-->

</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->

<!--GRADIENT--><div class="gradient"></div><!--END GRADIENT-->

</body>
</html>