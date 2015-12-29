<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Employee.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="\CSS\Login.css">
    <title></title>
</head>
<body>
    <div id="login_form">
        <form id="form1" runat="server">
            <table>
                <tr>
                    <td class="f1_label">User Name :</td>
                    <td>
                        <input type="text" name="username" value="" />
                    </td>
                </tr>
                <tr>
                    <td class="f1_label">Password  :</td>
                    <td>
                        <input type="password" name="password" value="" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="login" value="Log In" style="font-size:18px; " />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
