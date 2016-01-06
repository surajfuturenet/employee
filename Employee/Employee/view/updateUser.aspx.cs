using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee.view
{
    public partial class updateUser : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] != null)
            {
                UnameTextBox.Text = Session["userName"].ToString();

            }
            if (Session["firstName"] != null)
            {
                FnameTextBox.Text = Session["firstName"].ToString();

            }
            if (Session["lastName"] != null)
            {
                LnameTextBox.Text = Session["lastName"].ToString();

            }
            if (Session["email"] != null)
            {
                EmailTextBox.Text = Session["email"].ToString();

            }
            if (Session["contact"] != null)
            {
                CnumberTextBox.Text = Session["contact"].ToString();

            }
        }
    }
}