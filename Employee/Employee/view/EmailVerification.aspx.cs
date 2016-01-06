using Employee.Controller;
using Employee.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee.view
{
    public partial class EmailVerification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User us = (User)Session["userDetails"];
            if (us == null)
            {
                Response.Redirect("error.aspx");

            }

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (TextBox.Text.Equals("PIN Number"))
            {
                error.Text = "PIN Number is required";
                return;
            }

            User us = (User)Session["userDetails"];
            int pin;
            try { 
            pin = (new PinNumbers()).GetPin(us.UserId)[0].PinNumber;
            }
            catch (Exception)
            {
                error.Text = "PIN Number should be an Number";
                return;
            }
            string PIN = pin.ToString();

            if (TextBox.Text.Equals(PIN))
            {

                // User should be activated  
                us.activateUser(us.UserId);
                Session["userLogIn"] = us;
                Response.Redirect("UserManagement.aspx");
            }
            else {
                error.Text = "Type correct PIN / Click Resend Mail to resend the PIN number";
            }

        }

        protected void button_Click(object sender, EventArgs e)
        {
            User us = (User)Session["userDetails"];

            Email email = new Email(us.Email, us.UserId);
            error.Text = "";
            int success = email.SendMail();

            if (success == 1)
            {
                TextBox.Text = "Enter PIN";
                Session["userDetails"] = us;
                return;
            }
            else {
                error.Text = "Mail is not Send";
            }
        }
    }
}