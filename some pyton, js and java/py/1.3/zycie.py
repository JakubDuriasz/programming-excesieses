# -*- coding: utf-8 -*-
"""
Created on Wed Sep 22 17:50:06 2021

@author: projekt
"""

#plasza = [" ", " ", " ",      " ", " ", " ",     " ", " ", " "]

#plasza = [" ", "X", " ",      " ", "X", " ",     " ", "X", " "]

plansza = [[1,1,1,""],
           [0,1,0,""],
           [0,1,0,""]]


#hasloFil11
#print(plansza)

ylengh=len(plansza)
xlengh=None
'''
def spr_sasiad():
    #if(plasza[]) -1  +1
    for i in range(ylengh):
        
        print(i)
        if(plansza[i][1])==1:
            print("żyje")
        else:
            print("martwa")
'''            
            
for i in range(ylengh):
    for j in range(len(plansza[i])):
        
        print(plansza[i][j], end=' ')
    print()
    

print("------------------------------------")    
for i in range(ylengh):
    for j in range(len(plansza[i])):
        if(plansza[i][j])==1:
            print("żyje")
            
            
            #------------Czy żyje obok------------
            if(plansza[i][j+1])!=1:
                print("x+1___obok nie żyje")
            else:
                print("x+1___obok żyje")
                
                
            if(plansza[i][j-1])!=1:
                print("x-1___obok nie żyje")
            else:
                print("x-1___obok żyje")
                
            #-----------Czy  zyje u góry------------
            '''
            if(plansza[i+1][j])!=1:
                print("y+1___u góry nie żyje")
            else:
                print("y+1___u góry żyje")
                
                
            if(plansza[i-1][j])!=1:
                print("y-1___u na dole nie żyje")
            else:
                print("y-1___u na dole żyje")
            
            '''
                
            
            
        else:
            print("martwa")
            
    print("###")#new line
            
        
       
    
    
    

#spr_sasiad()

#class Plansza:

'''
OOO 
OOO
OOO

123
456
789

OXO
OXO
OXO


'''
'''
for i in range(9):
    print(plasza[i])
'''