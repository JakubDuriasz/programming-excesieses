import tkinter as tk
okno = tk.Tk()
okno.title("Moja Apka")#Dodawanie Nazwy Okna
okno.geometry("300x400")#Dodawanie wymiarów Okna
okno.resizable(False,False)#Zablokowanie skalowania okna
tekst = tk.StringVar()
tekst.set("Witaj")#zwykły tekst
label01 = tk.Label(okno, textvariable=tekst)#ustawienia nowego tekstu na miejscu
label01.grid(row=0,column=0)#zmiana koloru tekstu i tła
label02 = tk.Label(okno, textvariable=tekst,bg="black",fg="white")
label02.grid(row=1,column=0)
label03 = tk.Label(okno, textvariable=tekst,bg="#ff0000" , fg="#00ff00")
#zmiana kolorów tekstu i tla za pomocą kolorów zapisanych hexadecymalnie
label03.grid(row=2,column=0)
label04 = tk.Label(okno, textvariable=tekst,font="none 16 bold")
#zmiana wielkosci i pogrubienia tekstu
label04.grid(row=3,column=0)
label05 = tk.Label(okno,  textvariable=tekst, font=("Times New Roman",16,"italic"))
#dodanie systemowego fontu i ustawienie pochyłej kursywy tesktu
label05.grid(row=4,column=0)
okno.mainloop()