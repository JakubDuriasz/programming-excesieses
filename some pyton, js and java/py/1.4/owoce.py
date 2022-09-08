# -*- coding: utf-8 -*-
"""
Created on Mon Sep 27 17:14:55 2021

@author: Jakub D
"""

owoce = ["mango" , "bannan", "truskawka", "melon", "jabłko"]
a = list(filter(lambda x: x[0].lower() == "m", owoce))
print(a)
