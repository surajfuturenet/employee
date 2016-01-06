using Employee.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace Employee.Controller
{
    public class Email
    {
        private string email;
        private int id;

        public Email(string email,int id)
        {
            this.email = email;
            this.id = id;
        }

        public int SendMail()
        {
            int success = 0;

            try
            {

                var fromAddress = new MailAddress("warunikasun@gmail.com", "From Name"); // email is hardcoded
                var toAddress = new MailAddress(email, "To Name");
                const string fromPassword = "0713444801";       // Password is hardcoded .. 
                const string subject = "PIN Nomber";
                Random rnd = new Random();
                int pin = rnd.Next(1, 10000);
                string pinText = pin.ToString();
                string body = "Your PIN nomber is : " + pinText;

                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body
                })
                {
                    smtp.Send(message);
                    (new PinNumbers()).insertPin(id,pin);

                    success = 1;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine("error in sending mail");
                success = 0;
            }

            return success;
        }
    }
}