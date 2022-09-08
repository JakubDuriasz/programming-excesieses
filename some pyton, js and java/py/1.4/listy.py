# -*- coding: utf-8 -*-
"""
Created on Mon Sep 27 17:47:05 2021

@author: Jakub D
"""

x = [1, 2, 3, 4, 5]
y = [3, 4, 5, 6, 7, 8, 9, 10]

z = []
for a in x:
    if a in y:
        z.append(a)
        
a = list(v for v in x if v in y)

print(x)
print(y)
print(z)
print(a)