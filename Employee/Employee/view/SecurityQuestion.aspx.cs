using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using Employee.Controller;

namespace Employee.view
{
    public partial class SecurityQuestion : System.Web.UI.Page
    {

       

        protected void Page_Load(object sender, EventArgs e)
        {
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
            cmd.CommandText = "SELECT q_id, question FROM SequrityQuestion";

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
           

            DBConnection DBcon = new DBConnection();
            SqlConnection con = DBcon.CreateConnection();

            int UID = 2; // User id hardcoded

            string ANS1 = Answer1.Text;
            string ANS2 = Answer2.Text;
            string ANS3 = Answer3.Text;
            if (UnansweredCount(ANS1,ANS2,ANS3) >= 2)
            {
                error.Text = "Atleast Answer 2 questions";
                return;
                
            }

           

           
            AddWithValue(con, UID, SQ1, ANS1);
            AddWithValue(con, UID, SQ2, ANS2);
            AddWithValue(con, UID, SQ3, ANS3);



            DBcon.CloseConnection();




        }

        protected void AddWithValue(SqlConnection con, int UID,DropDownList SQ, string ANS) {
            if (ANS.Equals("") != true)
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