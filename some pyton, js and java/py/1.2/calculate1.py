# -*- coding: utf-8 -*-
"""
Created on Mon Sep 20 17:48:45 2021

@author: Jakub D
"""

#-------------------------------------------

print("Kalkulator")

class kalkulator:
    
    równanie = None
    x = None
    y = None

def dzialanie(self):
    self.odejmowanie = x - y
    self.dodawanie = x + y
    self.mozenie = x * y
    self.dzielenie = x / y
    
#-------------------------------------------

równanie = input("podaj jakie równaie chcesz wykonać ")
x = int(input("podaj pierwsza wartosć "))
y = int(input("podaj druga wartosć "))


if równanie == "+":
    print(x + y)
if równanie == "-":
    print(x - y)
if równanie == "*":
    print(x * y)
if równanie == "/":
    print(x / y)

#-------------------------------------------