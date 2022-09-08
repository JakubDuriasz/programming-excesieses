# -*- coding: utf-8 -*-
"""
Spyder Editor



This is a temporary script file.
"""


x = "variableTXT";
list1=['a','b','c','d','e'];
print("Hello world");
print(x);



print(list1[0]);
list2=list1;
print(list2[2]);
#list2.add("zamek");
print(list2[0:4]); #przediał pokaz w przedziale





###############################
slownik1={
    "klucz": 1111111,
    "Filip": 333

}


print(slownik1);

#slownik1.add()

############tuple raz ustawione
krotka0 = ("peies", "kot", 1111);
print(krotka0);


##while 
"""
pętla while
"""


n =0;

while n <8:
    n+=1;
    
    
    if n >= 5:
        print(">5");  
    
   # break; wywal
    print(n);
    
    
    
    
"""
PĘTLA FOR
break - przerwij
continue - kontunuuj od poczatku
"""


animals = ["cat", "dog", "parrot", "skurwiel"];


for animal in animals:
    print(animal+'  ___   to dobre zwierze');
 
    """
n=0;
for n<50:
    print("for for");
    n++;
"""

#funkcja range

for i in range(4):
    print(i);
    print("  range______i");
    

for number in range(-3, 1):
    print(number);
    
########################


"""dosnr work

fruits["apple", "pea", "chickpea"];

for index, fruit in enumerate(fruits):
    print("owoc".{fruit}."pod indexem".{index})
    
"""

#----------------------------------
"""
listy uzywajac pętli -----------------
"""

wiele_liczb=[];
for i in range(1500):
    wiele_liczb.append(1);
    
print(len(wiele_liczb));


#------------------------------

wielkie2 = [i for i in range(300)]
print(len(wielkie2));


print(wielkie2[234]);

#----------------



