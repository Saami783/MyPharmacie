namespace MyPharmacie.Data;

public class Medicaments
{
    public string NomMedicament {get;set;}
    public string SubstanceActive	{get;set;}
    public string Description	{get;set;}
    [Key]
    public string CIP	{get;set;}
    public string Classe	{get;set;}
    public int Prix	{get;set;}
    public string Categorie	{get;set;}
}