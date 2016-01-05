<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecurityQuestion.aspx.cs" Inherits="Employee.view.SecurityQuestion" %>

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
<form name="signup-form" runat="server" class="signup-form" action="" method="post">

	<!--HEADER-->
    <div class="header">
    <!--TITLE--><h1>Select Security Question
		
	</h1><!--END TITLE-->
	    

		
    <!--DESCRIPTION--><span>Select Atleast two Security Question.</span><!--END DESCRIPTION--><br />
        <asp:Label runat="server" ID="error" class="error"></asp:Label>
    </div>
    <!--END HEADER-->
	
	<!--CONTENT-->
    <div class="content">
	
	
	
	<!--SECURITY QUESTION-->
        <asp:DropDownList class="input userrole" runat="server" ID="SQ1" EnableViewState="true"  OnSelectedIndexChanged="SQ_Change" AutoPostBack="true" Width="303px">
                <asp:ListItem class="input" Value="0">Select one Question</asp:ListItem>       
                
            </asp:DropDownList>

        <asp:TextBox runat="server" id="Answer1" class="input username" value="Answer" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
        
        <asp:DropDownList class="input userrole" runat="server" ID="SQ2" EnableViewState="true"  OnSelectedIndexChanged="SQ_Change" AutoPostBack="true" Width="299px">
                <asp:ListItem class="input" Value="0">Select one Question</asp:ListItem>       
                
            </asp:DropDownList>

        <asp:TextBox runat="server" id="Answer2" class="input username" value="Answer" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>

        <asp:DropDownList class="input userrole" runat="server" ID="SQ3" EnableViewState="true"  OnSelectedIndexChanged="SQ_Change" AutoPostBack="true" Width="303px">
                <asp:ListItem class="input" Value="0">Select one Question</asp:ListItem>       
                
            </asp:DropDownList>

         <asp:TextBox runat="server" id="Answer3" class="input username"  value="Answer" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
        
        
        <!--SECURITY QUESTION-->
    </div>
	
	
    <!--END CONTENT-->
    
    <!--FOOTER-->
    <div class="footer">
    <!--SIGNUP BUTTON--><asp:Button id="SQuestion" Text="Continue" class="button" runat="server" OnClick="SQuestion_Click" Height="50px" /><!--END SIGNUP BUTTON-->
	    
    </div>
    <!--END FOOTER-->

</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->

<!--GRADIENT--><!--END GRADIENT-->

</body>
</html>
