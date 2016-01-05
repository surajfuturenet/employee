using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;

namespace Employee.Tools
{
    public class PasswordEncryption
    {
        internal static byte[] encryptPassword(string password)
        {
            var salt = System.Text.Encoding.UTF8.GetBytes("kjkfj333333kej");
            var passwordEncryp = System.Text.Encoding.UTF8.GetBytes(password);

            var hmacMD5 = new HMACMD5(salt);
            var saltedHash = hmacMD5.ComputeHash(passwordEncryp);
            return saltedHash;
        }
    }
}