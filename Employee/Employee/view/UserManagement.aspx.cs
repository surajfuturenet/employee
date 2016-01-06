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
        public object DataGridViewAutoSizeColumnsMode { get; private set; }

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
            string fname;
            string lname;
            string uname;
            string email;
            User usr = new User();
            if (TextBox1.Text == "")
            {
                fname = null;
            }
            else
            {
                fname = TextBox1.Text;
            }
            if (TextBox2.Text == "")
            {
                lname = null;
            }
            else
            {
                lname = TextBox2.Text;
            }
            if (TextBox3.Text == "")
            {
                uname = null;
            }
            else
            {
                uname = TextBox3.Text;
            }
            if (TextBox4.Text == "")
            {
                email = null;
            }
            else
            {
                email = TextBox4.Text;
            }
            if((TextBox1.Text == "")&& (TextBox2.Text == "")&& (TextBox3.Text == "")&& (TextBox4.Text == ""))
            {
                GridView1.Visible = false;
            }
            else
            {
                List<User> exlist = usr.searchUsers(uname, email, fname, lname);


                GridView1.DataSource = exlist;
                GridView1.DataBind();
                GridView1.Visible = true;
                
            }
            

            Li1.Attributes["class"] = ""; // dis active home page
            profile.Attributes["class"] = ""; // disactive profile tab
            userManagement.Attributes["class"] = "active"; // active user management
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "ShowUserManage()", true); // call show User Manage


        }
        protected void clear_Click(object sender, EventArgs e)
        {
            //TextBox1.Text = "";
            //TextBox2.Text = "";
            //TextBox3.Text = "";
            //TextBox4.Text = "";
            GridView1.Visible = false;
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
                    User us = (User)Session["userLogIn"];
                    Session["userLogIn"] = us;
                    Li1.Attributes["class"] = ""; // dis active home page
                    profile.Attributes["class"] = ""; // disactive profile tab
                    userManagement.Attributes["class"] = "active"; // active user management
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "ShowUserManage()", true); // call show User Manage
                    //Response.Redirect("UserManagement.aspx");

                }
            }

            // do something
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
        protected void PendingRecordsGridview_RowDeleting(object sender, EventArgs  e)
        {

        }
    }
}