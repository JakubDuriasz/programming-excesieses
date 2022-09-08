package kurs;

public class Osoba {
    private String imie="Milosz";
    private String nazwisko="Kowalczyk";
    private int wiek=15;
    
    
    
//    utworzenie konstruktora
    public Osoba(){
        
    }
    public Osoba (String imie, String nazwisko, int wiek){
         this.imie = imie;
         this.nazwisko = nazwisko;
         this.wiek = wiek;
    }
    
//    utworzenie get i set
    public void setImie(String imie){
        this.imie = imie;
    }
    public void setNazwisko(String nazwisko){
        this.nazwisko = nazwisko;
    }
    public void setWiek(int wiek){
        this.wiek = wiek;
    }
    
    public String getImie (){
        return this.imie;
    }
    public String getNazwisko (){
        return this.nazwisko;
    }
    public int getWiek (){
        return this.wiek;
    }
//     tworzymy metode wyswietl do wyswietlenia imienia nazwiska i wieku
    public String wyswietl(){
        return("Mam na imie "+this.imie+", na nazwisko "+this.nazwisko+" i mam "+this.wiek+" lat.");
    }
}
