package kurs;

public class Uczen extends Osoba{
    private String szkola;
    private int klasa;
     
//    utworzenie kosntruktora
    public Uczen(){
        
    }
    public Uczen(String szkola, int klasa, String imie, String nazwisko, int wiek){
        super(imie, nazwisko, wiek);
        this.szkola = szkola;
        this.klasa = klasa;
        }
    
//    ustawienie get i set
    public void setSzkola(String szkola){
        this.szkola = szkola;
    }
    public String getSzkola(){
        return this.szkola;
    }
    public void setKlasa(int klasa){
        this.szkola = szkola;
    }
    public int getKlasa(){
        return this.klasa;
    }
    
    
   
}
