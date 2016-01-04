using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Employee.Controller;
using System.Data.SqlClient;

namespace Employee.view
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserName.Text = "User Name";
            FirstName.Text = "First Name";
            LastName.Text = "Last Name";
            
            ContactNumber.Text = "Contact Number";

            User.Text = "User";

            EmailTextBox.ReadOnly = true;
            UnameTextBox.ReadOnly = true;
            int UID = 2;
            DBConnection DBcon = new DBConnection();
            SqlConnection con = DBcon.CreateConnection();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT * FROM User WHERE user_id = " + UID;


            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
            }
            catch (Exception)
            {
                Console.WriteLine("Sql Error");

            }


            DBcon.CloseConnection();
        }

        protected void update_Click(object sender, EventArgs e)
        {
            if (RegularExpressionValidator1.Text.Equals(""))
            {
                // Update the profile
                error.Text = "Data Sccussfully Updated";
            }
          
        }
    }
}