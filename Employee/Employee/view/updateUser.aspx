<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/EmployeeMaster.Master" CodeBehind="updateUser.aspx.cs" Inherits="Employee.Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<!--META-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Update User</title>

<!--STYLESHEETS-->
<link href="/CSS/updateuser.css" rel="stylesheet" type="text/css" />

<!--SCRIPTS-->
<script type="text/javascript" src="/scripts/jquery.min.js"></script>
<!--Slider-in icons-->
<script type="text/javascript">
$(document).ready(function() {
	
});
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<!--WRAPPER-->
<div id="wrapper">

	

<!--LOGIN FORM-->
<form name="updateuser-form" runat="server" class="updateuser-form" method="post">

	<!--HEADER-->
    <div class="header">
    <!--TITLE--><h1>Update User
		
	</h1><!--END TITLE-->
	    

		
    
    </div>
    <!--END HEADER-->
	
	<!--CONTENT-->
    <div class="content">
	

	<!--USERNAME-->
       <asp:Label runat="server" Text="User Name"></asp:Label><br />
     
        <asp:TextBox runat="server" ID="UnameTextBox" class="input username" value="User Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
        
        <!--END USERNAME-->
	<br />
	<!--FIRSTNAME-->
        <asp:Label runat="server" Text="First Name"></asp:Label><br />
        
         <asp:TextBox runat="server" id="FnameTextBox" class="input firstname" value="First Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox><!--END FIRSTNAME-->
        <br />
    <!--LASTNAME-->
        <asp:Label runat="server" Text="LastName"></asp:Label><br />
       <asp:TextBox runat="server" id="LnameTextBox" class="input lastname" value="Last Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
        
        <!--END LASTNAME-->
	<br />
	 <!--EMAIL-->
         <asp:Label runat="server" Text="Email"></asp:Label><br />

        <asp:TextBox runat="server" id="EmailTextBox" class="input email" value="Email" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox><!--END EMAIL-->
	<br />
	<!--PASSWORD-->
        <asp:Label runat="server" Text="Password"></asp:Label><br />
       <asp:TextBox runat="server" id="PaswordTextBox" class="input password" value="Password" onfocus="this.setAttribute('type','password'); if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value==''){ this.value = this.defaultValue;this.setAttribute('type','text');}" ></asp:TextBox><!--END PASSWORD-->
        <br />
	<!--CONTACT NUMBER-->
         <asp:Label runat="server" Text="ContactNumber"></asp:Label><br />
               
        <asp:TextBox runat="server" id="CnumberTextBox" class="input contact" value="Contact Number" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox><!--CONTACT NUMBER-->
	<br />
	<!--USER ROLE-->
       

     <asp:Label runat="server" Text="User Role" ></asp:Label><br />

            <asp:DropDownList class="input userrole" runat="server" ID="UserRole">
                <asp:ListItem class="input" Value="admin">Admin</asp:ListItem>       
                <asp:ListItem class="input" Value="user">User</asp:ListItem>  
            </asp:DropDownList>

<!--USER ROLE-->
    </div>
	
	
    <!--END CONTENT-->
    
    <!--FOOTER-->
    <div class="footer">
    <!--SIGNIN BUTTON--><asp:Button runat="server" Text="Update" Class="button" />
        <!--END SIGNIN BUTTON-->
	    
    </div>
    <!--END FOOTER-->

</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->

<!--GRADIENT--><div class="gradient"></div><!--END GRADIENT-->


</asp:Content>