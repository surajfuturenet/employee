using Employee.Domain;
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

            if (!IsPostBack)
            {
                //Your page load code here...

                User us = (User)Session["userLogIn"];

                if (us == null)
                {
                    Response.Redirect("/view/error.aspx");
                }

                us = us.getUserById(us.UserId)[0];

                int UserTYpe = us.RoleId; // retrieve the user type
                User.Text = us.UserName;
                if (UserTYpe == 1)   // for Nomal user
                {
                    userManagement.Visible = false;
                    tabs_2.Visible = false;
                }

                if (UserTYpe == 2)  // for Admin
                {
                    userManagement.Visible = true;
                    //tabs_2.Visible = true;
                }



                EmailTextBox.ReadOnly = true;
                UnameTextBox.ReadOnly = true;

                // get the User and Update
                UnameTextBox.Text = us.UserName;
                FnameTextBox.Text = us.FirstName;
                LnameTextBox.Text = us.LastName;
                EmailTextBox.Text = us.Email;
                CnumberTextBox.Text = us.ContactNum;

            }
        }

        protected void update_Click(object sender, EventArgs e)
        {
            User us = (User)Session["userLogIn"];

            if (us == null)
            {
                Response.Redirect("/view/error.aspx");
            }

            us = us.getUserById(us.UserId)[0];
            try
            {
                us.updateUserData(us.UserName, FnameTextBox.Text, LnameTextBox.Text, CnumberTextBox.Text);
                // Update the profile
                error.Text = "Data Succussfully Updated";
            }
            catch (Exception ex)
            {
                error.Text = "Updating failed";
            }

            Li1.Attributes["class"] = ""; // dis active home page
            profile.Attributes["class"] = "active"; // disactive profile tab
            userManagement.Attributes["class"] = ""; // active user management
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "ShowProfile()", true); // call show Profile

        }
        //search click event
        protected void search_Click(object sender, EventArgs e)
        {
            string fname = TextBox1.Text;
            string lname = TextBox2.Text;
            string uname = TextBox3.Text;
            string email = TextBox4.Text;
            User usr = new User();
            if (TextBox1.Text.Contains(""))
            {
                fname = null;
            }
            if (TextBox2.Text.Contains(""))
            {
                lname = null;
            }
            if (TextBox3.Text.Contains(""))
            {
                uname = null;
            }
            if (TextBox4.Text.Contains(""))
            {
                email = null;
            }

            List<User> exlist = usr.searchUsers(uname, email, fname, lname);


            GridView1.DataSource = exlist;
            GridView1.DataBind();
            GridView1.Visible = true;

            Li1.Attributes["class"] = ""; // dis active home page
            profile.Attributes["class"] = ""; // disactive profile tab
            userManagement.Attributes["class"] = "active"; // active user management
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "ShowUserManage()", true); // call show User Manage


        }
        //row command
        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            User user2 = new User();
            if (e.CommandName == "Edit")
            {
                int id = int.Parse(e.CommandArgument.ToString());
                //List<User> list1 = User.getUserById(id);send id to update page after update direct do the this page and rebind the gridview
                List<User> list3 = user2.getUserById(id);
                //Session["userDetails"] = list3;


                Session["userName"] = list3[0].UserName;
                Session["firstName"] = list3[0].FirstName;
                Session["lastName"] = list3[0].LastName;
                Session["email"] = list3[0].Email;
                Session["contact"] = list3[0].ContactNum;
                //Session["lastName"] = list3[0].LastName;
                Response.Redirect("~/view/updateUser.aspx");

            }
            else if (e.CommandName == "Delete")
            {
                int id = int.Parse(e.CommandArgument.ToString());
                bool outval = user2.deleteUser(id);
                //rebind data GridView1.DataBind();
                if (outval)
                {
                    GridView1.DataBind();
                    Response.Redirect("UserManagement.aspx");

                }
            }

            // do something
        }
    }
}