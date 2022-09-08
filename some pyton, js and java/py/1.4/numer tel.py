class badNumber(Exception):
    def __init__(self):
        print("Podano błędnny numer telefonu")
        input()
        
numer = input('>')

if len(numer) < 9 or len(numer) > 10:
    raise badNumber
else:
    print("Numer:{numer}")