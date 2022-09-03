using Microsoft.AspNetCore.Identity.UI.Services;
using System.Threading.Tasks;
using System.Net.Mail;
using System.Net;

namespace MyPharmacie.Services
{
    public class EmailSender : IEmailSender
    {
        public async Task SendEmailAsync(string email, string subject, string htmlMessage)
        {
            var fromEmail = "support@tholdi.sami-bahij.com";
            var fromPassword = "0Zf?&a&rw5_}";

            MailMessage message = new();
            message.From = new MailAddress(fromEmail);
            message.To.Add(new MailAddress(email));
            message.Subject = subject;
            message.Body = htmlMessage;
            message.IsBodyHtml = true;

            var smtpClient = new SmtpClient("tholdi.sami-bahij.com")
            {
                Port = 465,
                Credentials = new NetworkCredential(fromEmail, fromPassword),
                EnableSsl = true
            };
            smtpClient.Send(message);
        }
    }
}
