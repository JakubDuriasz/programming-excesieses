# -*- coding: utf-8 -*-
"""
Created on Wed Sep 15 17:16:25 2021

@author: Projekt
"""

print("oblicz");

co = 0
x=0;
y=0;
z=0;



while co != 'q':


    print("podaj x ");
    
    x = input()
    x= int(x)
    
    
    print("podaj y ");
    y = int(input());
    
    
    print("podaj dzialanie: x-mnozenie, : -dzilelenie,  + -dodawanie, - odejmowanie");
    co = input();
    
    if co == 'x' or co =='*':
        print('mnozenie')        
        z=x*y
        
    elif co == ":":
        print("dzielenie")        
        z=x/y
        
    elif co == "+":
        print("dodawnie")       
        z=x+y
        
    elif co == "-":
        print("odejnowanie")        
        z=x-y
        
    elif co == "q":
        print("exit")
        break
                
    print(f"wynik {z}")
        


   


        













