package kurs;

public class Szef extends Pracownik {
    private int premia;
    
    
//    utworzenie kostruktora
    public Szef(){
        
    }
    public Szef(int premia, String stanowisko, int wynagrodzenie, String imie, String nazwisko, int wiek){
        super(stanowisko, wynagrodzenie, imie, nazwisko, wiek);
        this.premia= premia;
    }
    
//    utworzenie get i set
    public void setPremia(int premia){
        this.premia = premia;
    }
    public int getPremia(){
        return this.premia;
    }
    
    
    public String wyswietl(){
       return super.wyswietl()+" +"+this.premia+"PLN premii.";
   }
    
}
