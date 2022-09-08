const cena = 201;
const cenaDzisiejsza = cena > 200 ? cena * 0.8 : cena;
console.log(cenaDzisiejsza);


let str = "";
for (let i=0; i<4; i++) {
    for (let j=0; j<6; j++) {
        if (i==0 || i==3 || j==0 || j==5) {
            str += "*";
        } else {
            str += "-";
        }
    }
    str += "\n";
}

console.log(str);


const animal = "pies";
switch (animal) {
    case "krowa":
    case "pies":
        console.log("to zwierze żyje w gospodarstwie");
        break;
    case "lew":
        console.log("to zwierze żyje w Afryce");
        break;
    default:
        console.log("nieznane zwierze");
}


const litery = ["a", "b", "c"];
for (let i = 0; i < litery.length; i += 1 ) {
    console.log(litery[i]);
};
for(const litera of litery){
    console.log(litera);
}


const osoba = {
    imie: "jan",
    nazwisko: "kowalski"
};
for (const klucz in osoba) {
    console.log(klucz);
    console.log(osoba[klucz]);
};


function sum(a, b) {
    return a +b;
};
console.log(sum(2,2));


const sum = (a, b) => {
    return a +b;
};
console.log(sum(5, 5))


function podziel (a, b) {
    if (b !== 0){
        return a / b;
    }
    return "nie dziel przez zero"
};


function getImieNazwisko (uzytkownik) {
    return {
        imie: uzytkownik.imie,
        nazwisko: uzytkownik.nazwisko
    };
}


const jakisUzytkownik = {
    imie: "tomek",
    nazwisko: "kowalski",
    wiek: "35"
};
const osoba = getImieNazwisko(jakisUzytkownik);
console.log(osoba);


function osoba(imie , nazwisko, wiek) {
    return {
        imie: imie,
        nazwisko: nazwisko,
        wiek: wiek
    };
}
const o1 = osoba("jan", "kowalski", 35);
console.log(o1);


const operacjeMatematyczne = {
    dodawanie: function(a, b){
        return a + b;
    },
    odejmonanie: (a, b) => a - b,
    dzielenie(a, b){
        if (b === 0) {
            return "nie dziel przez zero";
        }
        return a / b
    }
}
console.log(operacjeMatematyczne.dodawanie(2, 3))


const funkcje = (function (){
    const metodaPrywatna = () => console.log("funkcja prywatna");
    metodaPrywatna();
    return {
        metodaPubliczna : function() {
            metodaPrywatnaPierwsza();
            console.log('pierwsza metoda publiczna')
        },
        metodaPublicznaDruga: function() {
            console.log('druga metoda publiczna');
        }
    };
})();
funkcje.metodaPublicznaDruga();


function getCena(cena, rabat){
    const znizka = 1 - (rabat || 0.1);
    return cena * znizka;
}
getCena(100, 0.2);
getCena(100);
getCena(100, 0);
console.log(getCena(100, 0.2));
console.log(getCena(100));
console.log(getCena(100, 0));


function getCena(cena, rabat) {
    const znizka = 1 - (typeof rabat === 'undefined' ? 0.1: rabat);
    return cena*znizka;
}
getCena(100, 0);
getCena(100, 0.3);
console.log(getCena(100, 0));
console.log(getCena(100, 0.3));

function suma(a, b = 1, c) {
    return a + b + c;
}
console.log(suma(2, 2, 2));
console.log(suma(2, 0, 2));
console.log(suma(2, 2));
console.log(suma(2, null, 2));


const osoba = {
    imie: "Jan",
    wiek: 30,
    adres: {miasto: 'Warszawa', kraj: 'Polska'},
    komunikat() {}
};
osoba.id = 123;
console.log(osoba.id);
osoba.wiek = undefined;
console.log(osoba.wiek);
console.log('wiek' in osoba);
delete osoba.wiek;
console.log('wiek' in osoba);


const A = {
    x: 5,
    y: 10
}
const B = {
    z:100
}
const punkt = {
    ...A,
    ...B
};
console.log(punkt);


Math.max(3, 5, 4);
const liczby = [3, 5, 4];
Math.max(liczby);
Math.max(...liczby);
console.log(Math.max(3, 5, 4));
console.log(Math.max(liczby));
console.log(Math.max(...liczby));


function potega(a, n) {
    let b=1;
    for(i=0; i<n; i++){
        b*=a;
    }
    return b;
}
console.log(potega(2, 8));


const A = [1, 2, 3];
const B = [4, 5, 6];
const C = A.concat(B);
console.log(C);
const D = [...A, ...B];
console.log(D);


const osoba = {
    imie: 'jan',
    wiek: 35
};
//console.log(osoba.Wiek());
console.log(osoba.hasOwnProperty('imie'));
console.log(osoba.toString());
console.log(osoba.__proto__);
console.log(Object.getPrototypeOf(osoba));


const osoba = {
    imie: 'jan',
    wiek: 35,
    toString: () => 'imie: jan'
};
console.log(osoba.toString());


const liczby = [1, 2, 3, 4, 5, 6];
console.log(console.log(typeof liczby));
console.log(liczby.length);
console.log(liczby.hasOwnProperty('lenght'));
console.log(liczby.toString());
liczby.toString = function() {
    return 'własna metoda toString()';
}
console.log(liczby);
console.log(liczby.length);
liczby.length = 10;
console.log(liczby);
console.log(liczby.length);
console.log(liczby.toString());

const imie = 'jan';
console.log(imie.length);
console.log(imie.hasOwnProperty('length'));
console.log(typeof imie);

const osoba = new String('tomek');
console.log(typeof osoba);
console.log(osoba);

function fn() {
    console.log(this.a);
}
let a = 10;
fn();//10

const obj = {
    i: 10,
    b: function() {
        console.log(this.i);
    },
    c:() => console.log(this.i),
}
obj.b();
obj.c();

function fn() {};
console.log(typeof fn);
console.log(Object.getPrototypeOf(fn) === Function.prototype);

const Osoba = function (imie, wiek) {
    this.imie = imie;
    this.wiek = wiek;
    this.getWiek = function () {
        return `Jestem ${this.imie}, mam ${this.wiek} lat.`;
    }
};
const osoba1 = new Osoba('tomek', 35);
const osoba2 = new Osoba('adam', 50);
console.log(osoba1.getWiek());
console.log(osoba2.getWiek());
console.log(osoba1.hasOwnProperty('getWiek'));
console.log(osoba2.hasOwnProperty('getWiek'));

const Osoba = function (imie, wiek) {
    this.imie = imie;
    this.wiek - wiek;
};
Osoba.prototype.getWiek = function () {
    return `mam ${this.wiek} lat`
}
const osoba1 = new Osoba('tomek', 35);
const osoba2 = new Osoba('adam', 50);
console.log(osoba1.getWiek());
console.log(osoba2.getWiek());
console.log(osoba1.hasOwnProperty('getWiek'));
console.log(osoba2.hasOwnProperty('getWiek'));