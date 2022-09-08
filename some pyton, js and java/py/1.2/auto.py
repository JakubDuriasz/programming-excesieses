# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.

@author: Jakub D
"""

#-------------------------------------------

class Car:
        
    def __init__(self, marka, model):
        self.marka = "bmw"
        self.model = "coupe"
        self.is_driving = "None"
        
    def hamuje(self):
        self.is_driving = "False"
        
    def rusza(self):
        self.is_driving = "True"
        
    def poka(self):
        print(self.marka, self.model)
        
    def poka1(self):
        print(self.is_driving)
        
#-------------------------------------------

auto = Car("marka", "model")
auto.poka()

auto.hamuje()
auto.poka1()

auto.rusza()
auto.poka1()
