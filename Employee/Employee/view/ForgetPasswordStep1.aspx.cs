using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Employee.Domain;

namespace Employee.view
{
    public partial class ForgetPasswordStep1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            var user = new User();
            List<User> currentUser = user.retrieveEmail(user_name.Text, email.Text);

            if (currentUser.Count > 1)
            {
                emailExist.Text = "Invalid User name or Email";
            }
            else if (currentUser.Count == 0)
            {
                emailExist.Text = "Invalid User name or Email";
            }
            else {
                Session["userEmail"] = currentUser[0];
                Response.Redirect("~/view/ForgetPasswordStep2.aspx", false);
            }
        }
    }
}