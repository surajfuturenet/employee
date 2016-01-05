using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Employee.Domain;
using Employee.Tools;

namespace Employee.view
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            check(UnameTextBox.Text, Password.Text);
        }

        protected void check(string userName, string password)
        {

            var user = new User();
            byte[] encryptPassword = PasswordEncryption.encryptPassword(password);
            var userList = user.checkUserLogin(userName, encryptPassword);

            if (userList.Count > 1)
            {
                InfoLabel.Text = "Invalid User";
            }
            else if (userList.Count == 1)
            {
                user.UserId = userList[0].UserId;
                user.Email = userList[0].Email;
                user.UserName = userList[0].UserName;

                Session["userLogIn"] = user;

                Response.Redirect("~/view/UserManagement.aspx", false);
            }
            else {
                InfoLabel.Text = "User not Exist Please Register";
            }
        }


    }
}