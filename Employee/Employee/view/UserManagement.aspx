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
    <link href="/CSS/GridView.css" rel="stylesheet" type="text/css" /> 
   

<!--SCRIPTS-->

<!--Slider-in icons-->
 

<script type="text/javascript">
$(document).ready(function() {
	
});
</script> 

    <script type="text/javascript">
        function ShowProfile() {

            console.log("This is home , hide the user man");
            
            document.getElementById('tabs_0').style.display = 'none';
            document.getElementById('tabs_1').style.display = 'inline';
            var ele = document.getElementById('tabs_2');
            if (ele != null)
                ele.style.display = 'none';


        }

        function ShowUserManage() {

            console.log("This is home , hide the user man");
            document.getElementById('tabs_1').style.display = 'none';
            document.getElementById('tabs_0').style.display = 'none';
            document.getElementById('tabs_2').style.display = 'inline';


        }
        
        function ShowHome() {

            console.log("This is home , hide the user man");
            document.getElementById('tabs_1').style.display = 'none';
            
            document.getElementById('tabs_0').style.display = 'inline';
            var ele = document.getElementById('tabs_2');
            if(ele != null)
                ele.style.display = 'none';


        }
    </script>

</head>
<body>

<!--WRAPPER-->
<div id="wrapper">

	

<!--LOGIN FORM-->
<form name="profile-form" runat="server" class="profile-form"  method="post">

	<!--HEADER-->
    <div class="header">
    <!--TITLE--><h1><asp:Label runat="server" ID="User"></asp:Label><!--REGISTER BUTTON--><asp:LinkButton runat="server"  class="register" OnClick="Unnamed1_Click" >Log Out</asp:LinkButton><!--END REGISTER BUTTON--><br />
		 <asp:Label runat="server" ID="error" class="error"></asp:Label>
	</h1><!--END TITLE-->
	    

		
    
    </div>
    <!--END HEADER-->
	
   
  
    


	<!--CONTENT-->
    <div class="content">
	
    
	<div class="container">
       
  <ul runat="server" style="margin: 20px 0px 22px; visibility: visible;" class="test1 nav nav-tabs">
      <li runat="server" id="Li1" class="active"><a data-toggle="tab" href="#" onclick="ShowHome()" aria-expanded="true">Home</a></li>
    <li runat="server" id="profile" ><a data-toggle="tab" href="#" onclick="ShowProfile()" aria-expanded="true">Profile</a></li>
  <li  runat="server"  id="userManagement" class=""><a data-toggle="tab" onclick="ShowUserManage()"  aria-expanded="false">User Management</a></li>
 
</ul>
    
</div>
        <div>
            <div runat="server" id="tabs_0"><h1 style="font-family: 'AR BERKLEY'; font-size: xx-large; font-weight: 500; font-style: normal; font-variant: small-caps; text-transform: none; color: #00CC66; bottom: auto; text-align: center"> Welcome To The Future Net</h1></div>
    <div runat="server" style="display:none" id="tabs_1">

        <!--CONTENT-->
    <div class="content">
	

	<!--USERNAME-->
        <asp:Label runat="server" ID="UserName" Text="User Name"></asp:Label><br />
     
        <asp:TextBox runat="server" id="UnameTextBox" class="input username" value="User Name" ></asp:TextBox>
          <!--END USERNAME-->
	<br />
	<!--FIRSTNAME-->
        <asp:Label runat="server" ID="FirstName" Text="First Name"></asp:Label><br />
        
         <asp:TextBox runat="server" id="FnameTextBox" class="input firstname" value="First Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
        <!--END FIRSTNAME-->
        <br />
    <!--LASTNAME-->
       <asp:Label runat="server" ID="LastName" Text="Last Name"></asp:Label><br />
       <asp:TextBox runat="server" id="LnameTextBox" class="input lastname" value="Last Name" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
        <!--END LASTNAME-->
	<br />
	<!--CONTACT NUMBER-->
        <asp:Label runat="server" ID="ContactNumber" Text="Contact Number"></asp:Label><br />
               
        
               
        <asp:TextBox runat="server" id="CnumberTextBox" class="input contact" value="Contact Number" onfocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue" ></asp:TextBox>
        <!--CONTACT NUMBER-->
	<br />
        <asp:Label runat="server" ID="Email" Text ="Email"></asp:Label><br />

        <asp:TextBox runat="server" id="EmailTextBox" class="input email" value="Email" ></asp:TextBox>
	
    </div>
        <div class="footer">
    <!--SIGNIN BUTTON-->
        <asp:Button id="update" Text="Update" class="button" runat="server" OnClick="update_Click" />
        <!--END SIGNIN BUTTON-->
	    
    </div>
    <!--END FOOTER-->

    </div>
    <div runat="server" style="display:none" id="tabs_2">

        <!--CONTENT USER MANAGEMENT-->
    <div class="content">
	
        <!--FIRSTNAME-->
         <div class ="leftside">

        

        <asp:Label runat="server" ID="Label1"></asp:Label><br />
        
         <asp:TextBox runat="server" id="TextBox1" class="input firstname" placeholder="First Name" ></asp:TextBox>
       </div><!--END FIRSTNAME-->
    <!--LASTNAME-->
              <div class ="rightside">

        <asp:Label runat="server" ID="Label2"></asp:Label><br />
       <asp:TextBox runat="server" id="TextBox2" class="input lastname" placeholder="Last Name" ></asp:TextBox>


              </div><!--END LASTNAME-->
	
        <!--USERNAME-->

        <div class ="leftside">
        <asp:Label runat="server" ID="Label3"></asp:Label><br />
     
        <asp:TextBox runat="server" id="TextBox3" class="input username" placeholder="User Name"  ></asp:TextBox>
            </div><!--END USERNAME-->
	
	<!--EMAIL-->
                  <div class ="rightside">
       
        <asp:Label runat="server" ID="Label4"></asp:Label><br />

        <asp:TextBox runat="server" id="TextBox4" class="input email" placeholder="Email"  ></asp:TextBox>
                  </div><!--EMAIL-->
        <!--GridView-->
	 <div class ="gridview" >
		<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" CssClass= "Grid" AlternatingRowStyle-CssClass="alt"
                      PagerStyle-CssClass="pgr" HorizontalAlign="Left" EmptyDataText="No Search Data Found" Visible="true" RowStyle-Height="20px" OnRowCommand="GridView1_OnRowCommand" AllowPaging="true" RowStyle-Wrap="true" RowStyle-Width="10px" OnRowDeleting="PendingRecordsGridview_RowDeleting">
            <Columns >
               
                <asp:BoundField  DataField="userId" HeaderText="User Id" ItemStyle-Wrap="true" ItemStyle-Width="30px" />
                <asp:BoundField DataField="userName" HeaderText="User Name" ItemStyle-Wrap="true" ItemStyle-Width="30px"/>
                <asp:BoundField DataField="email" HeaderText="Email" ItemStyle-Wrap="true" ItemStyle-Width="30px"/>
                <asp:BoundField DataField="firstName" HeaderText="First Name" ItemStyle-Wrap="true" ItemStyle-Width="30px"/>
                <asp:BoundField DataField="lastName" HeaderText="Last Name"  ItemStyle-Wrap="true" ItemStyle-Width="30px"/>
                <asp:BoundField DataField="contactNum" HeaderText="Contact Number" ItemStyle-Wrap="true" ItemStyle-Width="30px" />
                <asp:BoundField DataField="isActive" HeaderText="isActive" ItemStyle-Wrap="true" ItemStyle-Width="30px" />
                <asp:BoundField DataField="roleName" HeaderText="Role" ItemStyle-Wrap="true" ItemStyle-Width="30px"/>
                <%--<asp:CommandField ShowEditButton="True" ButtonType="Link" ControlStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top" ItemStyle-Width="40px" CommandArgument='<%#Bind("userId ") %>' />
                 <asp:CommandField ShowDeleteButton="True" ButtonType="Link" ControlStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top" ItemStyle-Width="50px"/>--%>
                 
                <asp:TemplateField>
               <ItemTemplate>
                   <%--<div style="text-align:left; vertical-align:initial">--%>
               <asp:Button ID="editbtnview" runat="server" Text="Edit" CommandName="Edit" CommandArgument='<%#Bind("userId") %>' Font-Bold="true" Height="20px" Width="50px" BackColor="#66ccff" BorderStyle="Groove" BorderColor="#000000" >
               </asp:Button>
                       <%--</div>--%>
               </ItemTemplate>
               </asp:TemplateField>
                    
                <asp:TemplateField>
               <ItemTemplate>
                    <%--<div style="text-align:left; vertical-align:super">--%>
               <asp:Button ID="deletebtnview" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Bind("userId") %>' Font-Bold="true" Height="20px" Width="50px" BackColor="#66ccff" BorderStyle="Groove" BorderColor="#000000" >
               </asp:Button>
                        <%--</div>--%>
               </ItemTemplate>
               </asp:TemplateField>
    
            </Columns>

		</asp:GridView>
	</div>
	<!--End Grid View-->
    </div>
	
	
    <!--END CONTENT-->
    
    <!--FOOTER-->
    <div class="footer">
    
        <!--CLEAR BUTTON--><asp:Button id="clear" Text="Clear" class="button" runat="server" OnClick="clear_Click" /><!--END CLEAR BUTTON-->
    <!--SEARCH BUTTON-->
        <asp:Button id="search" Text="Search" class="button" runat="server" OnClick="search_Click" />
        <!--END SEARCH BUTTON-->
    
    </div>
    <!--END FOOTER-->

    </div>
    
</div>
	
    
	
    </div>
	
	
    <!--END CONTENT-->
    

</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->

<!--GRADIENT--><div class="gradient"></div><!--END GRADIENT-->

</body>
    
</html>