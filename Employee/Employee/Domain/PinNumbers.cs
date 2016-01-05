using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Employee.Domain
{
    public class PinNumbers
    {

        private int pinNum;

        public int PinNumber
        {
            get
            {
                return pinNum;
            }
            set
            {
                pinNum = value;
            }
        }

        public int insertPin(int userid, int pinval)
        {
            //User userObj = new User();
            //userObj.UserId = userid;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("InsertPin", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = userid;
                        cmd.Parameters.Add("@pin_num", SqlDbType.Int).Value = pinval;

                        con.Open();
                        int countVal = cmd.ExecuteNonQuery();



                       

                        if (countVal == -1)
                        {
                            return 1;
                        }
                       
                        else
                        {
                            return -1;

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
        //retrieve pin number
        public List<PinNumbers> GetPin(int userid)
        {
            //User userObj = new User();
            //userObj.UserId = userid;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("GetPin", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = userid;


                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        List<PinNumbers> PinList = new List<PinNumbers>();
                        PinNumbers pin;
                        while (reader.Read())
                        {
                            pin = new PinNumbers();
                            pin.PinNumber = int.Parse(reader["pin_num"].ToString());

                            PinList.Add(pin);
                        }
                        return PinList;
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