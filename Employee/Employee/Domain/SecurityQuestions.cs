using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Employee.Domain
{
    public class SecurityQuestions
    {
        private int questionId;
        private string question;

        public int QuestionId
        {
            get
            {
                return questionId;
            }
            set
            {
                questionId = value;
            }
        }
        public string Question
        {
            get
            {
                return question;
            }
            set
            {
                question = value;
            }
        }
        // get question id
        public List<SecurityQuestions> getQuestionId(string question)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("GetQuestion", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@question", SqlDbType.Int).Value = question;

                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        List<SecurityQuestions> QuestionList = new List<SecurityQuestions>();
                        SecurityQuestions secQuestion;
                        while (reader.Read())
                        {
                            secQuestion = new SecurityQuestions();
                            secQuestion.QuestionId = int.Parse(reader["q_id"].ToString());

                            QuestionList.Add(secQuestion);
                        }
                        return QuestionList;
                    }
                }


                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
        }

    }
}