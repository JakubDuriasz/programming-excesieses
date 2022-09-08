# -*- coding: utf-8 -*-
"""
Created on Wed Sep 15 18:18:26 2021

@author: Filip
"""

print("HEY")
numbers=[]

x = int(input("Gimme a number: "))


div_quantity=0; 


for i in range(x):
    numbers.append(1)
    i+=1
    
    print(f"obecny dzilenik  {i}")
    if x % i:
        print("niepodzielne")
        
    else:
        print("podzielne")
        div_quantity+=1

if(div_quantity>2):
    print("To nie jest liczba pierwsza")
else:
    print("To liczba pierwsza")
        
   
    
#print(len(numbers))



