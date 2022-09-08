# -*- coding: utf-8 -*-
"""
Created on Fri Sep 17 16:29:32 2021

@author: Projekt
"""


from operations import add, sub, dev, multip, dev, mod

#import operations

print("oblicz");


x=0;
y=0;
z=0;


 
    
  #------------- 

def operate(x,y,co):
    
    if co == 'x' or co =='*':
        return multip(x,y)                               
    elif co == ":":
        return dev(x,y)
       
    elif co == "+":
        return add(x,y)       
    elif co == "-":
        return sub(x,y)       
    elif co == "%":
        return mod(x,y)      
    elif co == "q":
        print("exit")
        quit()
        
#----------------------


while True:


    print("podaj x ");
    
    x = input()
    x= int(x)
    
    
    print("podaj y ");
    y = int(input());
    
    
    print("podaj dzialanie: x-mnozenie, : -dzilelenie,  + -dodawanie, - odejmowanie, %-moduł");
    co = input();
    

              
    z=operate(x,y,co)
    print(f"wynik {z}")
        
