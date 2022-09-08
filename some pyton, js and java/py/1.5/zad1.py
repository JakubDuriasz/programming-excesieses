import math

liczby = range(0,100)
sin_liczb = []

save = 'cal1,col2\n'
for i in liczby:

    sin_liczb.append(math.sin(liczby[i]))

    save+=str(liczby[i])+', '+str(sin_liczb[i])+'\n'

print(sin_liczb)
try:
    file - open('zapis.txt', 'w+')

    file.write(save)

except:
    print("\n\nFailed to open file!\n ")

finally:
    file.close()