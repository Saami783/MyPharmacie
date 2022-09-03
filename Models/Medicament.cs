using System.ComponentModel.DataAnnotations.Schema;

namespace MyPharmacie.Models
{
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


        public Medicaments(string NomMedicament,string SubstanceActive,string Description,string CIP,string Classe, int Prix, string Categorie)
        {
            this.Categorie = Categorie;
            this.Classe = Classe;
            this.Description = Description;
            this.Prix = Prix;
            this.NomMedicament = NomMedicament;
            this.SubstanceActive = SubstanceActive;
            this.CIP = CIP;
        }
    
    
    }
}


