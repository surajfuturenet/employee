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
           UserName.Text = "User Name";
           FirstName.Text = "First Name";
           LastName.Text = "Last Name";
           Email.Text = "Email";

            User.Text = "User";
        }
    }
}