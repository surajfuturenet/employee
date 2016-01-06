using Employee.Controller;
using Employee.Domain;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee.view
{
    public partial class ForgetPasswordStep2 : System.Web.UI.Page
    {
        int NoQuestion = 0;  // Number Of Question
        protected void Page_Load(object sender, EventArgs e)
        {

            User us = (User)Session["userEmail"];
            List <User> nuser = us.retrieveEmail("", us.Email);
             int UID = nuser[0].UserId;
            // int UID = 2;   // User Id hard coded

            DBConnection DBcon = new DBConnection();
            SqlConnection con = DBcon.CreateConnection();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT SQ.q_id, question FROM SequrityQuestions SQ, ProvideAnswers P WHERE SQ.q_id = P.q_id AND P.user_id = " + UID;

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
                int a = 1;

                while (reader.Read())
                {

                   // ListItem lst = new ListItem(reader.GetString(1), reader.GetInt32(0).ToString());
                    if(a==1)
                        Q1.Text = reader.GetString(1);
                    if(a==2)
                        Q2.Text = reader.GetString(1);
                    if(a==3)
                        Q3.Text = reader.GetString(1);
                    a++;
                }
                NoQuestion = a - 1;
                if (Q3.Text.Equals("")) {
                    TextBox3.Visible = false;
                }

            }
            catch (Exception ex)
            {
                error.Text = ex.ToString();
            }

            DBcon.CloseConnection();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            User us = (User)Session["userEmail"];
            List<User> nuser = us.retrieveEmail("", us.Email);
            int UID = nuser[0].UserId;
            // int UID = 2;   // User Id hard coded
            int correct = 0;
            int Answered = 0;
            Answered = CountAnswered(TextBox1.Text,TextBox2.Text,TextBox3.Text);
            if (Answered < 2) {
                TextBox1.Text = "Answer";
                TextBox2.Text = "Answer";
                TextBox3.Text = "Answer";
                error.Text = "Answer at least 2 questions";
                return;
            }
            DBConnection DBcon = new DBConnection();
            SqlConnection con = DBcon.CreateConnection();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT SQ.q_id, answer FROM SequrityQuestions SQ, ProvideAnswers P WHERE SQ.q_id = P.q_id AND P.user_id = " + UID;

            try {
                SqlDataReader reader = cmd.ExecuteReader();
                int a = 1;
                while (reader.Read())
                {
                    if (a == 1)
                    {
                        if (!TextBox1.Text.Equals( reader.GetString(1)))
                            correct++;
                    }
                    if (a == 2)
                    {
                        if (!TextBox2.Text.Equals(reader.GetString(1)))
                            correct++;
                    }
                    if (a == 3)
                    {
                        if (!TextBox3.Text.Equals(reader.GetString(1)))
                            correct++;
                    }


                    a++;
                }
            }
            catch (Exception ex) {
                error.Text = ex.ToString();
            }

           

            DBcon.CloseConnection();

            if (correct < 2)
            {
                error.Text = "Wrong Answer";
                return;
            }
            else
            {
                Email email = new Email(nuser[0].Email,nuser[0].UserId);
                int success  = email.SendMail();

                if (success == 1)
                {
                    Session["User"] = nuser[0];
                    Response.Redirect("ForgetPasswordStep3.aspx");
                }
                else {
                    error.Text = "Mail is not Send";
                }
            }
        }

        private int CountAnswered(string text1, string text2, string text3)
        {
            int count = 0;
            if (!text1.Equals("Answer"))
            {
                count++;
            }
            if (!text2.Equals("Answer"))
            {
                count++;
            }
            if (!text3.Equals("Answer"))
            {
                count++;
            }
            return count;
        }
    }
}