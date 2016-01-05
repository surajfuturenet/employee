using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Employee.Domain;
using Employee.Tools;

namespace Employee.view
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (passwordConfirmation())
            {
                var user = new User();

                User us = (User)Session["User"];
                int userId = us.UserId;
                byte[] encryptPassword = PasswordEncryption.encryptPassword(PaswordTextBox.Text);
                if (user.updatePassword(userId, encryptPassword))
                {
                    Response.Redirect("~/view/Login.aspx", false);
                }
                else {

                    CPaswordTextBox.Text = "";
                }
            }
            else {
                
                CheckCorrect.Text = "password confirmation not match";
            }
        }
        protected bool passwordConfirmation()
        {
            var pass1 = PaswordTextBox.Text;
            var pass2 = CPaswordTextBox.Text;
            if (pass1 != pass2)
            {
                return false;
            }
            else {
                return true;
            }
        }
    }
}