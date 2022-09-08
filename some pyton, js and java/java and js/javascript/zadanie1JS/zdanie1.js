let liczba = 5;
console.log(liczba);
console.log(typeof liczba);
liczba = 5.0;
liczba = .2;
liczba = 2e5;
liczba = -0.15;

// niejawnie przypisanie undefined
let a;
console.log(typeof a);
let b = undefined;
console.log(typeof b);

// tablica
const osoba={
    imie: 'Jan',
    wiek: 30,
    adres: {miasto:'Warszawa', kraj:'Polska'},
    komunikat(){/* funkcja komunikat */}
};
console.log(osoba.imie);
// console.log(osoba['imie']); druga mozliwosc wyswietlenia imienia
console.log(osoba.adres.miasto);
// console.log(osoba["adres"]["miasto"]); druga mozliwosc wyswietlenia miasta
osoba.imie = 'Marcin'; /* w onst mozna zmienic wartosci w obiekcie */
console.log(osoba.imie);

// tablica
const owoce = ["jabłko", "wiśnia", "gruszka"];
const tab = ["jabłko", 5, {wiek:30}, [1, 2, 3]];
console.log(tab[0]); // "jabłko"
console.log(tab[2]); // {wiek: 30}
console.log(tab[2].wiek); // 30
console.log(tab[3]); // [1,2,3]
console.log(tab[3][1]); // 2
owoce[0] = 3;
console.log(owoce);
owoce.push("Jan");
console.log(owoce);
owoce.push([1, 2, 3]);
console.log(owoce);

// //Operator Znaczenie Forma przypisania
// //+ DODAWANIE X = X + 5 LUB x += 5
// //- RÓŻNICA X = X - 5 LUB X -= 5
// //* ILOCZYN X = X * 5 LUB X *= 5
// /// DZIELENIE X = X / 5 LUB X /= 5
// //% MODULO X = X % 5 LUB X %=5
// //** POTĘGOWANIE X = X ** 5 (BRAK FORMY SKRÓCONEJ)

let i = 0;
console.log(i++); // wyswietla sie zero poniewaz najpierw wartosc jets pokazywana dopiero pozniej dodawana. Chyba ze w nawiasie zapiszemy (++i) wtedy najpierw doda potem wyswietli
console.log(1); // dopiero teraz pokaze sie 1

const imie = "Jan";
const nazwisko = "Kowalski";
const e = 'jakiś tekst';
const f = "jakiś tekst";
const g = `jakiś tekst`;
const h = `Imie: ${imie}, Nazwisko: ${nazwisko}` ;
console.log(h);

console.log('5' * 5);
console.log('5' - 2);
// wyjatek stanowi dodawanie
console.log('5'+ 5);
console.log(5 + 5);
console.log(3*0.1);

// OPERATORY PORÓWNANIA
// == rowne wartosci
// != nierowne wartosci
// === rowne typy i wartosci
// !== nierowne typy i wartosci
// > wieksze niz
// < mniejsze niz
// >= wieksze rowne niz
// <= mniejsze rowne niz

console.log(true || true);
console.log(false && true);

let a1 = 5;
console.log(0<=a1 && a1<=10);


let wzrost = 185;

if(wzrost >= 190){
    console.log("jesteś bardzo wyskoki/a"); //kod dla wartosci powyzej 190
}else if(190 > wzrost && wzrost >= 175){
    console.log("jesteś wysoki/a"); //kod dla wartosci powyzej 175 i ponizej 190
}else if(175> wzrost && wzrost >= 160){
    console.log("jesteś średniego wzrostu"); //kod wykonany dla wartosci powyzej 160 i ponizej 175
}else if(wzrost < 160){
    console.log("jesteś niski/a"); //kod wykonany dla wartosci ponizej 160
}else{
    console.log("Coś nie działa, spróbuj ponownie podać swój wzrost za chwilę. Pracujemy nad by jak najszybciej naprawić ten błąd");
}

const  cena = 201;
const cenaDzisiejsza = cena > 200 ? cena * 0.8 : cena; //operator trój warunkowy ?
console.log(cenaDzisiejsza);

const animal ='lew';
switch (animal) {
    case 'krowa':
    case 'pies':
        console.log('To zwierzę żyje w gospodarstwie');
        break;
    case 'lew':
        console.log('To zwierzę żyje w Afryce.');
        break;
    default:
        console.log('Nieznane zwierzę.');            
}

// pętla z wykorzystaniem continue
for (let i = 0; i <= 10; i++) {
    if(i%2==0){
        console.log('parzysta');
        continue; //jesli pierwszy warunek zadziala to przerywa petle i nie sprawdza dalej
    }
    if(i%2==1){
        console.log('tak');
    }else{
        console.log('nie');
    }

}

let j = 0;
let k = j++; 
console.log(k); //jesli damy u gory ++j wynik wyszedl by 1
console.log(j);

const litery = ['a', 'b', 'c'];
for(let i = 0; i < litery.length; i += 1){
    console.log(litery[i]);
};
for(const litera of litery){
    console.log(litera);
}

const osoba2 = {
    imie: 'Jan',
    nazwisko: 'Kowalski'
};
for (const klucz in osoba2){
    console.log(klucz);
    console.log(osoba2[klucz]);
}

// definiowanie i wywolanie funkcji

function sum(a, b){
    return a + b;
}
console.log(sum(4,3));
console.log(sum(13,7));

const fn = function dodaj(a, b){
    return a + b;
}
console.log(fn(2,2)); //4
// console.log(dodaj(4,2)); //błąd, nie mozemy skorzystac z nazwy dla tej funkcji

// tworzymy funkcje anonimowa
const fn1 = function (a, b) {
    return a + b;
};
console.log(fn1(5,5)); //10

// tworzenie funkcje strzałkową
const sum = (a, b) => {
    return a + b;
};
console.log(sum(5, 6));

// Wartosc zwracana przez funckje
function podziel (a, b) {
    if (b !== 0) {
       return a / b;
    }
return "Nie dziel przez zero!";
}
let wynik = podziel(2,2);
console.log(wynik*5);


function getImieNazwisko (uzytkownik){
    return{
        imie: uzytkownik.imie,
        nazwisko: uzytkownik.nazwisko
    };
}
// definiujemy przykladowego uzytkownika
const jakisUzytkownik = {
    imie:'Tomek',
    nazwisko:'Kowalski',
    wiek:'35'
};
const osoba = getImieNazwisko(jakisUzytkownik); // {imie:'Tomek', nazwisko: 'Kowalski'}
console.log(osoba)

function osoba (imie, nazwisko, wiek){
    return{
        imie: imie,
        nazwisko: nazwisko,
        wiek: wiek
    };
}
const o1 = osoba('Jan', 'Kowalski', 35);
console.log(o1);

// funkcje ktore odrazu sie wykonaja
(function (){
    console.log('tekst')
})();

// funckje IIFE mozna takze zapisac z uzyciem skladni arrow f... (funkcji strzalkowej)
(() => {
    console.log("tekst")
})();

// O B I E K T Y
const operacjeMatematyczne = {
    dodawanie: function (a, b) {
        return a + b;
    },
    odejmowanie: (a, b) => a - b,
    dzielenie(a, b) {
        if (b === 0){
            return 'Nie dziel przez zero!';
        }
        return a / b;
    }
}
console.log(operacjeMatematyczne.dzielenie(21,3));


const funkcje = (function () {
    const metodaPrywatna = () => console.log('funkcja prywatna');
    return {
        metodaPubliczna: function () {
            metodaPrywatnaPierwsza();
            console.log('pierwsza metoda publiczna');
        },
        metodaPublicznaDruga: function() {
            console.log('druga metoda publiczna');
        }
    };
})();
funkcje.metodaPublicznaDruga();
// parametry domyslne funkcji
function getCena(cena, rabat) {
const znizka = 1 - (rabat || 0.1);
return cena * znizka;
}
getCena(100, 0.2); //80
getCena(100); //90
getCena(100, 0); //90
console.log(getCena(100, 0.2));
console.log(getCena(100));
console.log(getCena(100, 0));
// to samo na dole
function getCena(cena, rabat){
  const znizka = 1 - (typeof rabat === 'undefined' ? 0.1 : rabat);
  return cena * znizka;
}
console.log(getCena(100, 0));
console.log(getCena(100, 0.3));
// opcja nr 3 tego samego
function suma(a, b = 1, c) {
    return a + b + c;
}
console.log(suma(2, 2, 2)); // 6
console.log(suma(2, 0, 2)); // 4
console.log(suma(2, 2)); // NaN
console.log(suma(2, null, 2)); // 4

// Modyfikowanie obiektow
const osoba = {
    imie: 'Jan',
    wiek: 30,
    adres: {miasto: 'Warszawa', kraj:'Polska'},
    komunikat() { /*funkcja komunikatu*/}
};
osoba.id = 123;
console.log(osoba.id); // 123
osoba.wiek = undefined;
console.log(osoba.wiek); // undefined
console.log('wiek' in osoba); // true
delete osoba.wiek;
console.log('wiek' in osoba); //false

// Operatory spread i rest
const A = {
    x: 5,
    y: 10
}
const B = {
    z: 100
}
const punkt = {
    ...A,
    ...B
};
console.log(punkt);

// Punkt
console.log(Math.max(3, 5, 4)); // 5
const liczby =[3, 5, 4];
console.log(Math.max(liczby)); // NaN
console.log(Math.max(...liczby)); // 5

// tworzymy funkcje ktora poteguje do kwadratu
function potegowanie2 (a) {
    if (a == 0){
        return 'nie potęguj przez 0'
    }
    return a*a
}
console.log(potegowanie(5));
// funkcja potegoiwanie
function potegowanie (a, n) {
    let b=1;
    for(i=0; i<n; i++){
        b*=a;
    }
    return b;
}
console.log(potegowanie(2, 10));


const A = [1, 2, 3];
const B = [3, 4, 5];

const C = A.concat(B);
console.log(C); // [1, 2, 3, 4, 5]
const D = [...A, ...B];
console.log(D); // [1, 2, 3, 4, 5]

// prototypy i dziedziczenie
const osoba = {
    imie: 'Jan',
    wiek: 35
};
// console.log(osoba.wiek()); // Uncaught TypeError:
console.log(osoba.hasOwnProperty('imie')); // true
console.log(osoba.toString()); // "[object Object]"
console.log(osoba.__proto__);
console.log(Object.getPrototypeOf(osoba));

// nadpisywanie metod z prototypu
const osoba = {
    imie: 'Jan',
    wiek: 35,
    toString: () => 'Imię: Jan'
};
console.log(osoba.toString()); // "Imię: Jan"


const liczby = [1, 2, 3, 4, 5];
console.log(typeof liczby); // "object"
console.log(liczby.length); // 5
console.log(liczby.hasOwnProperty('length')); // true
console.log(liczby.toString());
liczby.toString = function () {
    return 'własna metoda toString()';
}
console.log(liczby);
console.log(liczby.length);
liczby.length = 10;
console.log(liczby);
console.log(liczby.length);
console.log(liczby.toString());

const imie = 'Jan';
console.log(imie.length); //5
console.log(imie.hasOwnProperty('length')); //true
console.log(typeof imie); //"string

const osoba = new String('Tomek');
console.log(typeof osoba); // object

// wskaznik this
function fn () {
    console.log(this.a);
}
fn(); //undefined
fn(5); //undefined

const obj = {
    i: 10,
    b: function() {
        console.log(this.i);
    },
    c: () => console.log(this.i),
}
obj.b();
obj.c();

// Klasy
function fn (){};
console.log(typeof fn); // "function"
console.log(Object.getPrototypeOf(fn) === Function.prototype); // true

//funkcja jest obiektem
const Osoba = function (imie, wiek) {
    this.imie = imie;
    this.wiek = wiek;
    this.getWiek = function () {
        return `${this.imie}, mam ${this.wiek} lat.`;
    }
};
const osoba1 = new Osoba('Tomek', 35);
const osoba2 = new Osoba('Adam', 50);
console.log(osoba1.getWiek()); //"Tomek, mam 35lat."

console.log(osoba1.hasOwnProperty('getWiek')); // true
console.log(osoba2.hasOwnProperty('getWiek')); // true


// dodanie metody(funkcji) do prototypu
const Osoba = function (imie, wiek) {
    this.imie = imie;
    this.wiek = wiek;
};

Osoba.prototype.getWiek = function () {
    return `Mam ${this.wiek} lat.`;
}
const osoba1 = new Osoba('Johny', 14);
const osoba2 = new Osoba('Grzegorz', 43);
console.log(osoba1.getWiek());
console.log(osoba1.hasOwnProperty('getWiek')); // false
console.log(osoba2.getWiek());
console.log(osoba2.hasOwnProperty('getWiek')); // false
osoba1.__proto__ === Osoba.prototype; // true
osoba2.__proto__ === Osoba.prototype; // true