using Employee.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee.view
{
    public partial class ForgetPasswordStep3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Equals("PIN Number")) {
                error.Text = "PIN Number is required";
                return;
            }

            User us = (User)Session["User"];

            int pin = (new PinNumbers()).GetPin(us.UserId)[0].PinNumber;
            string PIN = pin.ToString();

            if (TextBox1.Text.Equals(PIN))
            {
                Session["User"] = us;
                Response.Redirect("ResetPassword.aspx");
            }
            else {
                error.Text = "Type correct PIN / Click Resend Mail to resend the PIN number";
            }



        }
    }
}