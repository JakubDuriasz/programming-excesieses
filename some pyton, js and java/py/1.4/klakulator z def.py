# -*- coding: utf-8 -*-
"""
Created on Mon Sep 27 18:46:21 2021

@author: Jakub D
"""

print("Kalkulator")

x=0;
y=0;
z=0;

#-------------------------------------------

def add(x,y):
    return x+y
    
    
def sub(x,y):
    return x-y
    
def multip(x,y):
    return x*y
    
def dev(x,y):
    try:
        x/y
    except ZeroDivisionError:
        print("Podaj inną wartoć")
    return x/y


def mod(x,y):
    return x%y
    
    
#-------------------------------------------

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
        
#-------------------------------------------


while True:


    print("podaj x, by wyjsc wcisnij q");
    
    x = input()
    x= int(x)
    
    
    print("podaj y ");
    y = int(input());
    
    
    print("podaj dzialanie: x-mnozenie, : :-dzilelenie,  + -dodawanie, - odejmowanie, %-moduł");
    co = input();
    

              
    z=operate(x,y,co)
    print(f"wynik {z}")
    
#-------------------------------------------