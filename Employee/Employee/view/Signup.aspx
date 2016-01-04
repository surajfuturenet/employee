<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Employee.view.Signup" %>

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
</head>
<body>
   
<!--WRAPPER-->
<div id="wrapper">

	

<!--LOGIN FORM-->
<form id="form1" name="signup-form" runat="server" class="signup-form" >

	<!--HEADER-->
    <div class="header">
    <!--TITLE--><h1>Create Account
		
	</h1><!--END TITLE-->
	    

		
    <!--DESCRIPTION--><span>Fill out the form below to sign up.</span>
        </br><asp:Label ID="CheckCorrect" runat="server" ForeColor="#FF3300"></asp:Label><!--END DESCRIPTION-->
    </div>
    <!--END HEADER-->
	
	<!--CONTENT-->
    <div class="content">
	
	<!--USERNAME--><asp:TextBox runat="server" id="UnameTextBox" CssClass="input username" required="required" Text ="" placeholder="User Name" ></asp:TextBox>
        
    <!--END USERNAME-->
        	
	<!--FIRSTNAME-->      
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="add, a-z, 0-9 Length  5 -15 characters" Font-Size="X-Small" ForeColor="#FF3300" ValidationExpression="^[a-z0-9]{5,15}$" ControlToValidate="UnameTextBox"></asp:RegularExpressionValidator>
        <asp:TextBox runat="server" id="FnameTextBox" CssClass="input firstname" placeholder="First Name" ></asp:TextBox><!--END FIRSTNAME-->

    <!--LASTNAME--> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FnameTextBox" ErrorMessage="RequiredFieldValidator" Font-Size="X-Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:TextBox runat="server" id="LnameTextBox" class="input lastname" placeholder="Last Name"></asp:TextBox><!--END LASTNAME-->
	
	 <!--EMAIL-->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LnameTextBox" ErrorMessage="RequiredFieldValidator" Font-Size="X-Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:TextBox runat="server"  id="Email" type="text" class="input email"  placeholder="Email"  />
        
        <!--END EMAIL-->	
	<!--PASSWORD-->
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="Email" ErrorMessage="RegularExpressionValidator" Font-Size="X-Small" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:TextBox runat="server" id="PaswordTextBox" class="input password" type="password" placeholder="Password" ></asp:TextBox><!--END PASSWORD-->

	<!--CONFIRMPASSWORD-->
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="PaswordTextBox" ErrorMessage="Password must contain 8 characters and at least one number, one letter and one unique character such as !#$%&amp;? &quot;" Font-Size="X-Small" ForeColor="#FF3300" ValidationExpression="^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*\d)(?=.*[!#$%&amp;? &quot;]).*$"></asp:RegularExpressionValidator>
        <asp:TextBox runat="server" id="CPaswordTextBox" class="input password" type="password" placeholder="Confirm Password"  ></asp:TextBox><!--END CONFIRMPASSWORD-->

        <!--CONFIRMPASSWORD--><asp:TextBox runat="server" id="ContactNo" class="input password" placeholder="Contact nomber"  ></asp:TextBox><!--END CONFIRMPASSWORD-->
	
<%--	<!--USER ROLE--><asp:DropDownList class="input userrole" runat="server" ID="UserRole">
                <asp:ListItem class="input" Value="admin">Admin</asp:ListItem>       
                <asp:ListItem class="input" Value="user">User</asp:ListItem>  
            </asp:DropDownList><!--USER ROLE-->--%>       
    </div>
		
    <!--END CONTENT-->
    
    <!--FOOTER-->
    <div class="footer">
    <!--SIGNUP BUTTON--><asp:Button id="submitForm" Text="Create Account" class="button" runat="server" OnClick="submit_Click" BorderStyle="None"  /><!--END SIGNUP BUTTON-->
	    
    </div>
    <!--END FOOTER-->

</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->

<!--GRADIENT--><div class="gradient"></div><!--END GRADIENT-->
</body>
</html>
