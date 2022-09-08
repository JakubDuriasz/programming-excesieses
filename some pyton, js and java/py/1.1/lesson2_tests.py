# -*- coding: utf-8 -*-
"""
Created on Fri Sep 17 16:10:49 2021

@author: Projekt
"""

def  myFunction():
    print("heyyy")

    
myFunction()


def greet(name):
    print(f"HEY   {name}")
    
greet("Filip");


def hello(hello_who="world"):
    return "hello"+hello_who
                 
hello("zz")

#print(f"hello{hello_who}")
        
    
#imprt modułów-----------------------------
import math as matma

wynik = matma.sqrt(16)
print(wynik)
wynik = matma.factorial(5)#1*2*3*4*5
print(wynik)#silnia


