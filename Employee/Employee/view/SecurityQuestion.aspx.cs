using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using Employee.Controller;
using Employee.Domain;
using System.Security.Cryptography;

namespace Employee.view
{
    public partial class SecurityQuestion : System.Web.UI.Page
    {


       

        protected void Page_Load(object sender, EventArgs e)
        {

            var currentUserDetails = new User();
            currentUserDetails = (User)Session["userDetails"];



            if (currentUserDetails == null)
            {
                Response.Redirect("/view/error.aspx");
            }

            if (!IsPostBack) // If page loads for first time
            {
                // Assign the Session["update"] with unique value
                Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
                //=============== Page load code =========================

                


                Answer1.ReadOnly = true;
                Answer2.ReadOnly = true;
                Answer3.ReadOnly = true;


                DBConnection DBcon = new DBConnection();
                SqlConnection con = DBcon.CreateConnection();

                SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT q_id, question FROM dbo.SequrityQuestions";

            try
                {
                    SqlDataReader reader = cmd.ExecuteReader();
                    int a = 1;

                   while (reader.Read())
                    {
                        
                        ListItem lst = new ListItem(reader.GetString(1), reader.GetInt32(0).ToString());
                        SQ1.Items.Insert(a,lst);
                        SQ2.Items.Insert(a, lst);
                        SQ3.Items.Insert(a, lst);
                        a++;
                    }

                }
                catch(Exception ex) {
                    error.Text= ex.ToString();
                }




                DBcon.CloseConnection();
                //============== End of Page load code ===================
            }
           


        }

        protected void SQuestion_Click(object sender, EventArgs e)
        {
            var currentUserDetails = new User();
            currentUserDetails = (User)Session["userDetails"];

           

            if (currentUserDetails == null)
            {
                Response.Redirect("/view/error.aspx");
            }

            // Check whether Questions are same
           

            DBConnection DBcon = new DBConnection();
            SqlConnection con = DBcon.CreateConnection();

            

            string ANS1 = Answer1.Text;
            string ANS2 = Answer2.Text;
            string ANS3 = Answer3.Text;
            if (UnansweredCount(ANS1,ANS2,ANS3) >= 2)
            {
                error.Text = "Atleast Answer 2 questions";
                return;
                
            }

            if ( (int.Parse(SQ1.SelectedValue) == int.Parse(SQ2.SelectedValue)) || (int.Parse(SQ2.SelectedValue) == int.Parse(SQ3.SelectedValue)) || (int.Parse(SQ1.SelectedValue) == int.Parse(SQ3.SelectedValue)))
            {
                error.Text = "Please Choose Different Questions";
                return;
            }

            /*get the sessin value from signup page*/


            // SAVE IT TO USER
            User us = new Domain.User();
            bool inserted = us.insertUserData(currentUserDetails.UserName, currentUserDetails.EncryptedPassword, currentUserDetails.Email, currentUserDetails.LastName, currentUserDetails.LastName, currentUserDetails.ContactNum, false);

            // TAKE UID
            int UID = (us.checkUserLogin(currentUserDetails.UserName, currentUserDetails.EncryptedPassword))[0].UserId;
            // SAvE IT TO PROVIDE ANSWERS

            if (inserted) {
                
                ProvideAnswers p = new ProvideAnswers();
                if(int.Parse(SQ1.SelectedValue) != 0)
                     p.insertAnswers(UID, Int32.Parse(SQ1.SelectedValue), ANS1);
                if (int.Parse(SQ2.SelectedValue) != 0)
                    p.insertAnswers(UID, Int32.Parse(SQ2.SelectedValue), ANS2);
                if (int.Parse(SQ3.SelectedValue) != 0)
                    p.insertAnswers(UID, Int32.Parse(SQ3.SelectedValue), ANS3);
                    
            }


            DBcon.CloseConnection();

            Response.Redirect("UserManagement.aspx");


        }

       

        protected void AddWithValue(SqlConnection con, int UID,DropDownList SQ, string ANS) {
            if (ANS.Equals("Answer") != true)
            {
                SqlCommand command = new SqlCommand("INSERT INTO ProvideAnswers VALUES(@user_id,@q_id,@answer)", con);
                command.Parameters.AddWithValue("@user_id", UID);
                command.Parameters.AddWithValue("@q_id", Int32.Parse(SQ.SelectedValue));
                command.Parameters.AddWithValue("@answer", ANS);

                try
                {
                    command.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    error.Text = ex.ToString();
                    // delete last updated
                }
            }

        }

        protected void SQ_Change(object sender, EventArgs e)
        {
            if (SQ1.SelectedIndex != 0)
                Answer1.ReadOnly = false;
            if (SQ1.SelectedIndex == 0) {
                Answer1.ReadOnly = true;
            }
            if (SQ2.SelectedIndex != 0)
                Answer2.ReadOnly = false;
            if (SQ2.SelectedIndex == 0)
            {
                Answer2.ReadOnly = true;
            }
            if (SQ3.SelectedIndex != 0)
                Answer3.ReadOnly = false;
            if (SQ3.SelectedIndex == 0)
            {
                Answer3.ReadOnly = true;
            }

        }

        protected int UnansweredCount(string s1,string s2,string s3) {
            int c = 0;
            var strs = new List<string> { "" , "Answer"};
            if (strs.Contains(s1)) {
                c++;
            }
            if (strs.Contains(s2))
            {
                c++;
            }
            if (strs.Contains(s3))
            {
                c++;
            }


            return c;
        }
    }
}