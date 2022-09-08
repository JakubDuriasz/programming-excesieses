import tkinter as tk

okno = tk.Tk()
okno.title("triangle")
okno.geometry("400x500")
okno.resizable(False, False)

class podane_boki:
	def __init__(self, okno):

		self.tekst1 = tk.StringVar()
		self.label01 = tk.Label(okno, text="Podaj bok a: ")
		self.label01.grid(row=0, column=0)
		self.entry01 = tk.Entry(okno, textvariable=self.tekst1)
		self.entry01.grid(row=0, column=1)

		self.tekst2 = tk.StringVar()
		self.label02 = tk.Label(okno, text="Podaj bok b: ")
		self.label02.grid(row=1, column=0)
		self.entry02 = tk.Entry(okno, textvariable=self.tekst2)
		self.entry02.grid(row=1, column=1)

		self.tekst3 = tk.StringVar()
		self.label03 = tk.Label(okno, text="Podaj bok c: ")
		self.label03.grid(row=2, column=0)
		self.entry03 = tk.Entry(okno, textvariable=self.tekst3)
		self.entry03.grid(row=2, column=1)

		self.label04 = tk.Label(okno, text="")
		self.label04.grid(row=4, column=1)

		self.b1 = tk.Button(okno, text="Sprawdź", command=lambda: self.sprawdz(self.entry01.get(), self.entry02.get(), self.entry03.get(), self.label04))
		self.b1.grid(row=3, column=0)


	def sprawdz(self, entry01, entry02, entry03, label04):
		
		if entry01 + entry02 > entry03 and entry01 + entry03 > entry02 and entry02 + entry03 > entry01 :
			label04.config(text="taki trójkąt istnieje!")
		else:
			label04.config(text="taki trójkąt NIE istnieje!")


app = podane_boki(okno)

okno.mainloop()