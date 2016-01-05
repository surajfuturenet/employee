using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Employee.Tools;


namespace Employee.Domain
{
    public class User
    {
        private int userId;
        private string userName;
        private string password;
        private string email;
        private string firstName;
        private string lastName;
        private string contactNum;
        private bool isActive;
        private int roleId;
        private string role_name;
        private byte[] encryptedPassword;

        public int UserId
        {
            get
            {
                return userId;
            }
            set
            {
                userId = value;
            }
        }

        public string UserName
        {
            get
            {
                return userName;
            }
            set
            {
                userName = value;
            }
        }
        public string Password
        {
            get
            {
                return password;
            }
            set
            {
                password = value;
            }
        }
        public string Email
        {
            get
            {
                return email;
            }
            set
            {
                email = value;
            }
        }
        public string FirstName
        {
            get
            {
                return firstName;
            }
            set
            {
                firstName = value;
            }
        }
        public string LastName
        {
            get
            {
                return lastName;
            }
            set
            {
                lastName = value;
            }
        }
        public string ContactNum
        {
            get
            {
                return contactNum;
            }
            set
            {
                contactNum = value;
            }
        }
        public bool IsActive
        {
            get
            {
                return isActive;
            }
            set
            {
                isActive = value;
            }
        }
        public int RoleId
        {
            get
            {
                return roleId;
            }
            set
            {
                roleId = value;
            }
        }

        public string RoleName
        {
            get
            {
                return role_name;

            }
            set
            {

                role_name = value;

            }
        }
        public byte[] EncryptedPassword
        {
            get
            {
                return encryptedPassword;
            }
            set
            {
                encryptedPassword = value;
            }
        }
        //insert data in to User table
        public bool insertUserData(string username, string password, string email, string fname, string lname, string contact, bool isactive)
        {
            int role = 1;
            var saltedHash = PasswordEncryption.encryptPassword(password);

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("InsertUserInfo", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@user_name", SqlDbType.VarChar).Value = username;
                        cmd.Parameters.Add("@password", SqlDbType.VarBinary).Value = saltedHash;
                        cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;
                        cmd.Parameters.Add("@fname", SqlDbType.VarChar).Value = fname;
                        cmd.Parameters.Add("@lname", SqlDbType.VarChar).Value = lname;
                        cmd.Parameters.Add("@contactno", SqlDbType.VarChar).Value = contact;
                        cmd.Parameters.Add("@isctive", SqlDbType.Bit).Value = isactive;
                        cmd.Parameters.Add("@role_id", SqlDbType.Int).Value = role;
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
        public bool updateUserData(string username, string fname, string lname, string contact)
        {


            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("UpdateUserInfo", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@user_name", SqlDbType.VarChar).Value = username;
                        cmd.Parameters.Add("@fname", SqlDbType.VarChar).Value = fname;
                        cmd.Parameters.Add("@lname", SqlDbType.VarChar).Value = lname;
                        cmd.Parameters.Add("@contactno", SqlDbType.VarChar).Value = contact;
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
        //update User Table by Admin
        public bool updateUserDataByAdmin(int userid, string rolename)
        {


            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("UpdateUserInfoAdmin", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = userid;
                        cmd.Parameters.Add("@role", SqlDbType.VarChar).Value = rolename;

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
        //Delete User by Admin

        public bool deleteUser(int userid)
        {


            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("DeleteUsers", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = userid;


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
        //Get User Details from UserId
        public List<User> getUserById(int userid)
        {


            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("GetUserById", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = userid;


                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        List<User> UserList = new List<User>();
                        User user;
                        while (reader.Read())
                        {
                            user = new User();
                            user.UserName = reader["user_name"].ToString();
                            user.Email = reader["email"].ToString();
                            user.FirstName = reader["fname"].ToString();
                            user.LastName = reader["lname"].ToString();
                            user.ContactNum = reader["contact_num"].ToString();
                            UserList.Add(user);
                        }
                        return UserList;

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
        //GetUserId by username And password
        public List<User> checkUserLogin(string username, string password)
        {
            var saltedHash = PasswordEncryption.encryptPassword(password);

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("CheckLogin", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@user_name", SqlDbType.VarChar).Value = username;
                        cmd.Parameters.Add("@password", SqlDbType.VarBinary).Value = saltedHash;

                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        List<User> UserList = new List<User>();
                        User user;
                        while (reader.Read())
                        {
                            user = new User();
                            user.UserId = int.Parse(reader["user_id"].ToString());

                            UserList.Add(user);
                        }
                        return UserList;

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
        //Retrieve email when username or email given
        public List<User> retrieveEmail(string username, string email)
        {


            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("RetrieveEmail", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@user_name", SqlDbType.VarChar).Value = username;
                        cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        List<User> UserList = new List<User>();
                        User user;
                        while (reader.Read())
                        {
                            user = new User();
                            user.Email = reader["email"].ToString();
                            if (user.Email != "")
                            {
                                UserList.Add(user);
                            }
                        }
                        return UserList;

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
        //Update password
        public bool updatePassword(int userid , byte[] password)
        {


            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("UpdatePassword", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = userid;
                        cmd.Parameters.Add("@password", SqlDbType.VarBinary).Value = password;

                        con.Open();
                        cmd.ExecuteNonQuery();
                        SqlParameter returnParameter = cmd.Parameters.Add("@return", SqlDbType.Int);
                        returnParameter.Direction = ParameterDirection.ReturnValue;
                        cmd.ExecuteNonQuery();

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
        //search users by Admin

        public List<User> searchUsers(string username, string email, string fname, string lname)
        {


            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("SearchUsers", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = username;
                        cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;
                        cmd.Parameters.Add("@fname", SqlDbType.VarChar).Value = fname;
                        cmd.Parameters.Add("@lname", SqlDbType.VarChar).Value = lname;
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        List<User> UserList = new List<User>();
                        User user;
                        while (reader.Read())
                        {
                            user = new User();
                            user.UserId = int.Parse(reader["user_id"].ToString());
                            user.UserName = reader["user_name"].ToString();
                            user.Email = reader["email"].ToString();
                            user.FirstName = reader["fname"].ToString();
                            user.LastName = reader["lname"].ToString();
                            user.ContactNum = reader["contact_num"].ToString();
                            user.IsActive = bool.Parse(reader["isActive"].ToString());
                            user.RoleName = reader["role_name"].ToString();
                            UserList.Add(user);
                        }
                        return UserList;

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
        //check username is unique
        public Boolean checkUsernameUnique(string userName)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("checkUsernameUnique", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = userName;

                    con.Open();
                    cmd.ExecuteNonQuery();

                    SqlParameter returnParameter = cmd.Parameters.Add("@uniqueUser", SqlDbType.Int);
                    returnParameter.Direction = ParameterDirection.ReturnValue;
                    cmd.ExecuteNonQuery();

                    int countVal = (int)returnParameter.Value;

                    if (countVal > 0)
                    {
                        return false;
                    }
                    else
                    {
                        return true;
                    }
                }
            }
        }
        //check email is unique
        public Boolean checkEmailUnique(string email)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("checkEmailUnique", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;

                    con.Open();
                    cmd.ExecuteNonQuery();

                    SqlParameter returnParameter = cmd.Parameters.Add("@uniqueUser", SqlDbType.Int);
                    returnParameter.Direction = ParameterDirection.ReturnValue;
                    cmd.ExecuteNonQuery();

                    int countVal = (int)returnParameter.Value;

                    if (countVal > 0)
                    {
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
            }
        }
    }
}