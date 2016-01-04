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
            var salt = System.Text.Encoding.UTF8.GetBytes("kjkfj333333kej");
            var passwordBits = System.Text.Encoding.UTF8.GetBytes(password);

            var hmacMD5 = new HMACMD5(salt);
            var saltedHash = hmacMD5.ComputeHash(passwordBits);

            var userId = Athentication(userName, saltedHash);

        }

        protected int Athentication(string userName,byte[] password)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("CheckLogin", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = userName;
                    cmd.Parameters.Add("@password", SqlDbType.VarBinary).Value = userName;
                    con.Open();
                    cmd.ExecuteNonQuery();

                    SqlParameter checkAth = cmd.Parameters.Add("@ResultValue", SqlDbType.Bit);
                    checkAth.Direction = ParameterDirection.ReturnValue;
                    cmd.ExecuteNonQuery();

                    int checkAthentication = (int)checkAth.Value;

                    return checkAthentication;
                }
            }
        }
    }
}