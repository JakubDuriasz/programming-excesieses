package kurs;

public class Kurs {

    public static void main(String[] args) {
       Punkt2D punkt2D = new Punkt2D(5);
       Punkt2D p2D = new Punkt2D(10, 20);
       
       Punkt3D punkt3D = new Punkt3D(9,9,9);
//       UTWORZENIE OBIEKTU DLA SZEFA
       
       
       System.out.println("witaj");
       System.out.println(punkt2D.getX());
       System.out.println(punkt2D.getY());
//       punkt2D.x=5;
//       punkt2D.y=15;
       punkt2D.setX(5);
       punkt2D.setY(10);
//       System.out.println(punkt2D.getX());
//       System.out.println(punkt2D.getY());

//        wyswietlenie xyz
        System.out.println(punkt3D.wyswietl());
       
       
       int wynik = dodaj(2, 2);
       System.out.println(dodaj(5, 5));
         
       
       
//       O S O B A
//       wykorzystanie kostruktora:
       Osoba osoba9 = new Osoba ("Czeslaw","Milosz",48);
//       metoda wyswietlenia imienia nazwiska i wieku:
       osoba9.wyswietl();
//       O S O B A
       
//       P R A C O W N I K
//       wykorzystanie konstruktora:
       Pracownik pracownik = new Pracownik("Programista",7900,"Jan","Kowalski",31);
//       wyswietlenie imienia nazwiska wieku stanowika i wynagrodzenia
      System.out.println(pracownik.wyswietl());
//      P R A C O W N I K
      
//      S Z E F
//       wykorzystanie konstruktora(stworzenie obiektu i wstawienie wartosci):
       Szef szef = new Szef(400,"Informatyk",6800,"Jan","Kowalski",32);
//       wyswietlenie Imienia nazwiska wieku stanowiska wynagrodzenia i premii
       System.out.println(szef.wyswietl());
//       S Z E F
    
       Osoba tablicaOsoby[] = new Osoba[5];
       tablicaOsoby[0] = new Osoba("Jan","Kowalski",40);
       tablicaOsoby[1] = new Pracownik("Programista",11200,"Jan","Malinowski",32);
       tablicaOsoby[2] = new Szef(400,"Informatyk", 9700,"Jan","Nowak",43);
       tablicaOsoby[3] = new Uczen("CKZIUnr2",1,"Jan","Kowalski",17);
       tablicaOsoby[4] = new Student();
       for(Osoba osoba: tablicaOsoby){
           System.out.println(osoba.wyswietl());
       }
    
    
//    koniec maina
    }
    public static int dodaj(int a, int b){
        return a+b;
    }

  
}
