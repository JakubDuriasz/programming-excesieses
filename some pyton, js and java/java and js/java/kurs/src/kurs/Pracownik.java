package kurs;

public class Pracownik extends Osoba{
    private String stanowisko;
    private int wynagrodzenie;
    

//    utworzenie kostruktora
    public Pracownik(){
        
    }
    public Pracownik(String stanowisko, int wynagrodzenie, String imie, String nazwisko, int wiek){
        super(imie, nazwisko, wiek);
        this.stanowisko = stanowisko;
        this.wynagrodzenie = wynagrodzenie;
    }
   
//    Utworzenie get i set
    public void setStanowisko(String stanowisko){
        this.stanowisko = stanowisko;
    }
    public String getStanowisko(){
        return this.stanowisko;
    }
    public void setWynagrodzenie(int wynagrodzenie){
        this.wynagrodzenie = wynagrodzenie;
    }
    public int getWynagrodzenie(){
        return this.wynagrodzenie;
    }
    
    public String wyswietl(){
           return super.wyswietl()+" "+this.stanowisko+" "+this.wynagrodzenie+"PLN.";
       }
    
    
    
    }