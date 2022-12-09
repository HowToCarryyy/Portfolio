

def aufgabe1(zahl1_in, zahl2_in):
    zahl1 = zahl1_in
    zahl2 = zahl2_in
    if zahl1 > zahl2:
        return "Der größe nach sortiert sind die Zahlen: "+ str(zahl2) + ", "+ str(zahl1)
    else:
        return "Der größe nach sortiert sind die Zahlen: "+ str(zahl1) + ", "+ str(zahl2) 


def aufgabe2(kreditsumme_in, jahre_in):
    kreditsumme = kreditsumme_in
    zinssatz = 1.03
    jahre = jahre_in
    return "Die Zinssatz nach {} Jahre(n) beträgt: ".format(jahre)+ ""+ str(kreditsumme * zinssatz * jahre) +" €."

def aufgabe3(zahl1in, zahl2in):
    zahl1 = int(zahl1in)
    zahl2 = int(zahl2in)
    ergebnis1 = 1
    
    for i in range(zahl2):
        ergebnis1 = ergebnis1*zahl1

    

    counter = 0
    ergebnis2 = 1
    while counter < zahl2:
        ergebnis2 = ergebnis2*zahl1
        counter += 1
    
    control = pow(zahl1, zahl2)
    return "{} hoch {} For-Schleife: {} While-Schleife: {} Kontroll-Ergebnis: {}".format(zahl1, zahl2, ergebnis1, ergebnis2, control)


def aufgabe4(maximale_zahlin):
    zahl1, zahl2 = 0, 1
    zahl3 = 0
    maximale_zahl = maximale_zahlin

    out = []
    out.append(zahl1)
    out.append(zahl2)
    while True:
        zahl3 = zahl1 + zahl2
        if zahl3 > maximale_zahl:
            break
        
        out.append(zahl3)
        zahl1 = zahl2
        zahl2 = zahl3
    return out




def aufgabe5():
    name = "CSAIPRALKAINACZEYLVOST"
    out = ""
    for i in range(1, len(name), 2):
        out += name[i]
    return out

def aufgabe6():
    array = ['Emily', 'Hannah', 'Madison', 'Ashley', 'Sarah', 'Alexis', 'Samantha', 'Jessica', 'Elizabeth', 'Taylor', 'Lauren', 'Alyssa', 'Kayla', 'Abigail', 'Brianna', 'Olivia', 'Emma', 'Megan', 'Grace', 'Victoria']
    out = []
    for i in array:
        if i.startswith("A") or i.startswith("M"):
            out.append(i)
    return out

def aufgabe7():
    arr = []
    for i in range(1, 101):
        out = ""

        if i % 3 == 0: out += "Fizz"
        if i % 5 == 0: out += "Buzz"
        
        if out == "": out = i
        arr.append(out)
    return arr

def aufgabe8(zahl_input):
    output = []
    try:
        zahl = int(zahl_input)
        zahl = int(zahl)
    except ValueError:
        return ("Bitte geben Sie eine Zahl ein!")

    for i in range(zahl + 1):
        output.append((((2 * i) -1) * ("*")).center((zahl+2) * 2))
    
    length = len(output)
    for i in range(int(zahl/3)):
        output.append("|".center(len(output[length - 1])))
    
    return output


if __name__ == "__main__":
    print("Um zu der nächsten Aufgabe zu gelangen einfach 'Enter' drücken.")
    
    input("")

    print("Aufgabe 1:")
    aufgabe1_in1 = int(input("Zahl1: "))
    aufgabe1_in2 = int(input("Zahl1: "))
    print(aufgabe1(aufgabe1_in1, aufgabe1_in2))

    input("")

    print("Aufgabe 2:")
    aufgabe2_in1 = int(input("Kreditsumme eingeben: "))
    aufgabe2_in2 = int(input("Laufzeit (Jahre) eingeben: "))
    print(aufgabe2(aufgabe2_in1, aufgabe2_in2))

    input("")

    print("Aufgabe 3:")
    aufgabe3_in1 = int(input("Basis: "))
    aufgabe3_in2 = int(input("Exponent: "))
    print(aufgabe3(aufgabe3_in1, aufgabe3_in2))

    input("")

    print("Aufgabe 4:")
    aufgabe4_in1 = int(input("Maximale Zahl: "))
    out4 = aufgabe4(aufgabe4_in1)
    for i in range(len(out4)):
        print(out4[i])

    input("")

    print("Aufgabe 5:")
    print(aufgabe5())

    input("")

    print("Aufgabe 6:")
    out6 = aufgabe6()
    for i in out6:
        print(i)

    input("")

    print("Aufgabe 7:")
    out7 = aufgabe7()

    for i in out7:
        print(i)
    
    input("")

    print("Aufgabe 8:")
    aufgabe8_in1 = int(input("Wie groß soll der Baum sein: "))
    out8 = aufgabe8(aufgabe8_in1)
    for i in out8:
        print(i)

