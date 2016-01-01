using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Employee.Domain
{
    public class UserClass
    {
        private string _username;
        private string _password;
        private string _email;
        private string _first_name;
        private string _last_name;
        private string _contact_num;
        private bool _isActive;

        public void SetUsername(string username)
        {
            this._username = username;
        }

        public string GetUsername()
        {
            return this._username;
        }

        public void SetPassword(string password)
        {
            this._password = password;
        }

        public string GetPassword()
        {
            return this._password;
        }

        public void SetEmail(string email)
        {
            this._email = email;
        }

        public string GetEmail()
        {
            return this._email;
        }

        public void SetFname(string fname)
        {
            this._first_name = fname;
        }

        public string GetFname()
        {
            return this._first_name;
        }

        public void SetLname(string lname)
        {
            this._last_name = lname;
        }

        public string GetLname()
        {
            return this._last_name;
        }

        public void SetContactNum(string contact)
        {
            this._contact_num = contact;
        }

        public string GetContactNum()
        {
            return this._contact_num;
        }

        public void SetActive(bool status)
        {
            this._isActive = status;
        }

        public bool GetActive()
        {
            return this._isActive;
        }

        //insert data in to User table
        public void insertUserData(string username, string password, string email, string fname, string lname, string contact, bool isactive)
        {
            try
            {
                
            }
            catch
            {

            }
        }
    }
}