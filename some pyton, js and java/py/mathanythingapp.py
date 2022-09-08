import tkinter as tk
from typing import Collection
okno = tk.Tk()

okno.title("Simple math/anything app")
okno.geometry("700x300")
okno.resizable(False, False)

tekst1 = tk.StringVar()
tekst1.set("Sup m8")
label1 = tk.Label(okno, textvariable=tekst1, fg="blue",
                  font=("Arial", "17", "bold"))
label1.grid(row=0, column=2)

tekst2 = tk.StringVar()
tekst2.set("wanna sprite cranberry?")
label2 = tk.Label(okno, textvariable=tekst2, bg="black",
                  fg="white", font=("Times New Roman", "24", "italic"))
label2.grid(row=1, column=2)
label01 = tk.Label(okno, text="Podaj zmienną [a] :")
label01.grid(row=2, column=0)


def zColor():
    label5.configure(bg="green")


aVar = tk.StringVar()
entry01 = tk.Entry(okno, font=('none', 9), textvariable=aVar)
entry01.grid(row=2, column=1)

label6 = tk.Label(okno, text="Pole kwadratu :")
label6.grid(row=3, column=1)
label7 = tk.Label(okno, text="Obwód kwadratu :")
label7.grid(row=4, column=1)


def Pole():
    try:
        a = int(aVar.get())
        w1 = a*a
        label6.config(text="Pole kwadratu: "+str(w1))
    except ValueError:
        pass


def Obwod():
    try:
        a = int(aVar.get())
        w2 = a*4
        label7.config(text="Obwód kwadratu: "+str(w2))
    except ValueError:
        pass


def Oblicz():
    Pole()
    Obwod()


def hello():
    zColor()
    Oblicz()


label5 = tk.Button(okno, text="Oblicz Pole/Obwód Kwadratu", bg="red",
                   fg="black", font=("none", "10", "bold"), command=lambda: hello())
label5.grid(row=2, column=2)



def przyciskIN(x):
    label3.config(text="Najedź mnie", bg="white",
                  fg="black", font=("Arial", "16", "italic"))


def przyciskOUT(y):
    label3.config(text="Najedź mnie", bg="black",
                  fg="white", font=("Arial", "16", "italic"))


label3 = tk.Button(okno, text="Najedź mnie", bg="black",
                   fg="white", font=("Arial", "16", "italic"))
label3.bind("<Enter>", przyciskIN)
label3.bind("<Leave>", przyciskOUT)
label3.grid(row=5, column=2)


def zmianaG2(label4, tekst5):
    label4.config(text=(str(tekst5.get())), font=("none", "40", "bold"))


tekst5 = tk.StringVar()
entry03 = tk.Entry(okno, textvariable=tekst5)
entry03.grid(row=6, column=2)

guzik2 = tk.Button(okno, text="Wyświetl ten tekst",
                   command=lambda: zmianaG2(label4, tekst5))
guzik2.grid(row=6, column=3)

label4 = tk.Label(okno, text="")
label4.grid(row=7, column=2)


okno.mainloop()
