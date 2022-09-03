namespace MyPharmacie.Models;

public class AspNetUsers
{
    public string Id {get;set;}
    public string UserName {get;set;}
    public string NormalizedUserName {get;set;}
    public string Email {get;set;}
    public string NormalizedEmail {get;set;}
    public byte EmailConfirmed {get;set;}
    public string PasswordHash {get;set;}
    public string SecurityStamp {get;set;}
    public string ConcurrencyStamp {get;set;}
    public string PhoneNumber {get;set;}
    public byte PhoneNumberConfirmed {get;set;}
    public byte TwoFactorEnabled {get;set;}
    public DateTime LockoutEnd {get;set;}
    public byte LockoutEnabled {get;set;}
    public int AccessFailedCount {get;set;}

    public string num_secu {get;set;}

    public AspNetUsers(string Id_,string UserName_,string NormalizedUserName_,string Email_,string NormalizedEmail_,byte EmailConfirmed_,string PasswordHash_,string SecurityStamp_,string ConcurrencyStamp_,string PhoneNumber_,byte PhoneNumberConfirmed_,byte TwoFactorEnabled_,DateTime LockoutEnd_,byte LockoutEnabled_,int AccessFailedCount_,string num_secu_)
    {
        this.Id = Id_;
        this.UserName = UserName_;
        this.NormalizedUserName = NormalizedUserName_;
        this.Email = Email_;
        this.NormalizedEmail = NormalizedEmail_;
        this.EmailConfirmed = EmailConfirmed_;
        this.PasswordHash = PasswordHash_;
        this.SecurityStamp = SecurityStamp_;
        this.ConcurrencyStamp = ConcurrencyStamp_;
        this.PhoneNumber = PhoneNumber_;
        this.PhoneNumberConfirmed = PhoneNumberConfirmed_;
        this.TwoFactorEnabled = TwoFactorEnabled_;
        this.LockoutEnd = LockoutEnd_;
        this.LockoutEnabled = LockoutEnabled_;
        this.AccessFailedCount = AccessFailedCount_;
        this.num_secu = num_secu_;
    }
}