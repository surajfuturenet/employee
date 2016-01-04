using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee.view
{
    public partial class UserManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int UserTYpe = 0; // retrieve the user type
            User.Text = "User Name";
            if(UserTYpe == 1)   // for Nomal user
            {
                userManagement.Visible= false;
                tabs_2.Visible = false;
            }

            if (UserTYpe == 0)  // for Admin
            {
                userManagement.Visible = true;
                //tabs_2.Visible = true;
            }

            //User.Text = "User";

            EmailTextBox.ReadOnly = true;
            UnameTextBox.ReadOnly = true;

            // get the User and Update
           

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