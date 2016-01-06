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
        /* Login.aspx button click access */
        protected void login_Click(object sender, EventArgs e)
        {
            check(UnameTextBox.Text, Password.Text);
        }

        /* check user name and password Athentication */
        protected void check(string userName, string password)
        {
            
            var user = new User();
            byte[] encryptPassword = PasswordEncryption.encryptPassword(password);

            /* calling Athentication in Users.cs */
            var userList = user.checkUserLogin(userName, encryptPassword);

            /* check User list have 1 value */
            if (userList.Count > 1)
            {
                InfoLabel.Text = "Invalid User";
            }
            else if (userList.Count == 1)
            {
                if (user.checkIsActive(userList[0].UserId))
                {
                    user = userList[0];
                    Session["userLogIn"] = user;

                    Response.Redirect("~/view/UserManagement.aspx", false);
                }
                else {
                    Session["userLogIn"] = user;

                    Response.Redirect("~/view/EmailVerification.aspx", false);
                }
            }
            else {
                InfoLabel.Text = "Invalid User name or password";
            }
        }
        
    }
}