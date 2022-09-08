# -*- coding: utf-8 -*-
"""
Created on Fri Sep 17 16:59:39 2021

@author: Projekt
"""

#numbers[0]= "cat"

num = []




def findNumber(*args):
    a=None#biggest
    b=None
    
    for i in args:
        print(f"n={i}")       
        
        if a==None:
            a=i
            print(f"a={a}")
        else:
            b=i
            if b>=a:
                a=b
                print(f"b={b}")
            else:
                print("bigger")
                
    return a          
            
            
        


biggest=findNumber(14,5,88,6,12,43)
print(f"biggest num:{biggest}")

import webbrowser
webbrowser.open('http://ciac.ml') # Go to example.com