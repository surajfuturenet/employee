using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Employee.Domain
{
    public class ProvideAnswers
    {
        private int qId;
        private string answer;

        public int QuestionId
        {
            get
            {
                return qId;
            }
            set
            {
                qId = value;
            }
        }
        public string Answer
        {
            get
            {
                return answer;
            }
            set
            {
                answer = value;
            }
        }
        //insert answers to the Provide Answers Table
        public bool insertAnswers(int userid, int qid, string userAnswer)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("InsertUserAnswer", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = userid;
                        cmd.Parameters.Add("@q_id", SqlDbType.Int).Value = qid;
                        cmd.Parameters.Add("@answer", SqlDbType.VarChar).Value = userAnswer;

                        con.Open();
                        cmd.ExecuteNonQuery();
                        SqlParameter returnParameter = cmd.Parameters.Add("@return", SqlDbType.Int);
                        returnParameter.Direction = ParameterDirection.ReturnValue;


                        int countVal = (int)returnParameter.Value;

                        if (countVal == 1)
                        {
                            return true;
                        }
                        else
                        {
                            return false;

                        }
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
        //retrieve the given answers for the questions

        public List<ProvideAnswers> getAnswers(int userid)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("GetUserAnswer", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = userid;

                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        List<ProvideAnswers> AnswrList = new List<ProvideAnswers>();
                        ProvideAnswers answr;
                        while (reader.Read())
                        {
                            answr = new ProvideAnswers();
                            answr.Answer = reader["answer"].ToString();

                            AnswrList.Add(answr);
                        }
                        return AnswrList;
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