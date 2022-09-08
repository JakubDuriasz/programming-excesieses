# -*- coding: utf-8 -*-
"""
Created on Mon Sep 20 18:54:07 2021

@author: Jakub D
"""

#-------------------------------------------

class Pearson:
    def __init__(self, name, weight, height):
        self.name = name
        self.weight = weight
        self.height = height
        
class Student(Pearson):
    def __init__(self, name, weight, height, clas, grades):
        super().__init__(name, weight, height)
        self.clas = clas
        self.grades = grades
        
class Teacher(Pearson):
    def __init__(self, name, weight, height, clas, grades, subject, pay):
        super().__init__(name, weight, height)
        self.subject = subject
        self.pay = pay
        
#-------------------------------------------
        
Marcinek = Student("Marcinek", "85", "190", "2Td", "6,5,6,4,3,4")
print(Marcinek.__dict__)

Pronias = Teacher("Jacek", "100", "150", "wszystkie", "-", "wszystkie", "10000")
print(Pronias.__dict__)
