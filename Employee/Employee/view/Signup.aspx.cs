using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Configuration;
using Employee.Domain;
using Employee.Tools;

namespace Employee.view
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /* Access the button click in signup.aspx */
        protected void submit_Click(object sender, EventArgs e)
        {
            if (passwordConfirmation())
            {
                var user = new User();

                /* Check Username and Email Unique */
                if (user.checkUsernameUnique(UnameTextBox.Text) && user.checkEmailUnique(Email.Text))
                {
                    submit_Data();
                }
                else if (!user.checkUsernameUnique(UnameTextBox.Text) && !user.checkEmailUnique(Email.Text))
                {
                    CheckCorrect.Text = "Username and Email are Already Exist";
                }
                else if (!user.checkEmailUnique(Email.Text))
                {
                    CheckCorrect.Text = "Email is Already Exist";
                }
                else
                {
                    CheckCorrect.Text = "Username is Already Exist";
                }
            }
            else {
                CPaswordTextBox.Text = "";
                CheckCorrect.Text = "password confirmation not match";
            }
        }

        /* check password Confirmation valid */
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

        /* Send data to the next page */
        protected void submit_Data()
        {
            var user = new User();
            var pssEncypt = PasswordEncryption.encryptPassword(PaswordTextBox.Text);

            user.UserName = UnameTextBox.Text;
            user.FirstName = FnameTextBox.Text;
            user.LastName = LnameTextBox.Text;
            user.Email = Email.Text;
            user.EncryptedPassword = pssEncypt;
            user.ContactNum = ContactNo.Text;
            user.IsActive = false;

            Session["userDetails"] = user;
            cleanForm();
            Response.Redirect("~/view/SecurityQuestion.aspx", false);

        }

        /* clean form text box data */
        protected void cleanForm()
        {
            UnameTextBox.Text = "";
            FnameTextBox.Text = "";
            LnameTextBox.Text = "";
            Email.Text = "";
            ContactNo.Text = "";
            PaswordTextBox.Text = "";
            CPaswordTextBox.Text = "";
        }

       
    }
}