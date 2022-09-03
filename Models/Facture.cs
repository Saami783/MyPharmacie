namespace MyPharmacie.Models;

public class Facture
{
    public string num_facture {get;set;}
    public DateTime date_facture {get;set;}
    public float montant_facture {get;set;}
    public string code_preparateur {get;set;}
    public string code_usager {get;set;}

    public Facture(string num_facture_,DateTime date_facture_,float montant_facture_,string code_preparateur_,string code_usager_)
    {
        this.num_facture = num_facture_;
        this.date_facture = date_facture_;
        this.montant_facture = montant_facture_;
        this.code_preparateur = code_preparateur_;
        this.code_usager = code_usager_;
    }
}