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

namespace Employee.view
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submit_Click(object sender, EventArgs e)
        {
            if (checkUsernameUnique(UnameTextBox.Text) && checkEmailUnique(Email.Text))
            {
                submit_Data();
            }
            else if (!checkUsernameUnique(UnameTextBox.Text) && !checkEmailUnique(Email.Text))
            {

                cleanForm();
                CheckCorrect.Text = "Username and Email are Already Exist";
            }
            else if (!checkEmailUnique(Email.Text))
            {
                cleanForm();
                CheckCorrect.Text = "Email is Already Exist";
            }
            else
            {
                cleanForm();
                CheckCorrect.Text = "Username is Already Exist";
            }
        }
        protected void submit_Data()
        {
            var salt = System.Text.Encoding.UTF8.GetBytes("kjkfj333333kej");
            var password = System.Text.Encoding.UTF8.GetBytes(PaswordTextBox.Text);

            var hmacMD5 = new HMACMD5(salt);
            var saltedHash = hmacMD5.ComputeHash(password);


            //Page.Response.Redirect(Page.Request.Url.ToString(), true);
            var user = new User();

            user.UserName = UnameTextBox.Text;
            user.FirstName = FnameTextBox.Text;
            user.LastName = LnameTextBox.Text;
            user.Email = Email.Text;
            user.EncryptedPassword = saltedHash;
            user.ContactNum = ContactNo.Text;
            user.IsActive = false;

            Session["userDetails"] = user;
            
            Response.Redirect("~/view/SecurityQuestion.aspx", false);

        }

        protected Boolean checkUsernameUnique(string userName)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("checkUsernameUnique", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = userName;

                    con.Open();
                    cmd.ExecuteNonQuery();

                    SqlParameter returnParameter = cmd.Parameters.Add("@uniqueUser", SqlDbType.Int);
                    returnParameter.Direction = ParameterDirection.ReturnValue;
                    cmd.ExecuteNonQuery();

                    int countVal = (int)returnParameter.Value;

                    if (countVal > 0)
                    {
                        return false;
                    }
                    else
                    {
                        return true;
                    }
                }
            }
        }

        protected Boolean checkEmailUnique(string email)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("checkEmailUnique", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;

                    con.Open();
                    cmd.ExecuteNonQuery();

                    SqlParameter returnParameter = cmd.Parameters.Add("@uniqueUser", SqlDbType.Int);
                    returnParameter.Direction = ParameterDirection.ReturnValue;
                    cmd.ExecuteNonQuery();

                    int countVal = (int)returnParameter.Value;

                    if (countVal > 0)
                    {
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
            }
        }
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