def simple_caesar_encryption(text, key):
    # Für die einfachste Version der Caesar-Verschlüsselung wird der Text zunächst in Großbuchstaben umgewandelt.
    text = text.upper()
    # Um den verschlüsselten Text zu speichern, wird eine leere Variable deklariert.
    encrypted_text = ""
    # Für jeden Buchstaben im Text wird ein neuer Buchstabe erzeugt. Dieser wird durch die ASCII-Tabelle ermittelt. 
    # Diese enthält die Zahlenwerte für die Buchstaben und kann in Python mit den Funktionen ord() und chr() verwendet werden. 
    ### Beispiel: ord("A") = 65, chr(65) = "A"
    # Das Alphabet der ASCII-Tabelle beginnt bei 65. Daher muss dieser Wert von der ASCII-Zahl des Buchstabens abgezogen werden. 
    # Anschließend wird der Schlüssel addiert. Dieser Wert wird durch 26 modulo genommen. 
    # Dieser Wert entspricht der Anzahl der Buchstaben im Alphabet. 
    ### Beispiel: (ord("A") - 65 + 3) % 26 = 3 (3 ist in diesem Fall der Key und entspricht dem Wert "D")
    # Anschließend wird wieder 65 addiert. Dieser Wert entspricht dem Wert des Buchstabens A in der ASCII-Tabelle. 
    # Dieser Wert wird wieder in einen Buchstaben umgewandelt.
    for i in text:
        if 65 <= ord(i) <= 90:
            encrypted_text += chr((ord(i) + key - 65) % 26 + 65)
        elif i == " ":
            encrypted_text += " "
        else:
            encrypted_text += i
    return encrypted_text

def simple_caesar_decryption(text, key):
    # Für die Entschlüsselung wird genau der gleiche Algorithmus verwendet, wie bei der Verschlüsselung. 
    # Der einzige Unterschied ist, dass der Schlüssel subtrahiert wird.
    text = text.upper()
    decrypted_text = ""
    for i in text:
        if 65 <= ord(i) <= 90:
            decrypted_text += chr((ord(i) - key - 65) % 26 + 65)
        elif i == " ":
            decrypted_text += " "
        else:
            decrypted_text += i
    return decrypted_text


def caesar_upper_and_lower_encryption(text, key):
    # Die nächstschwierigere Variante der Caesar-Verschlüsselung ist die Verschlüsselung von Groß- und Kleinbuchstaben.
    # Hier wird in der ASCII-Tabelle zwischen Groß- und Kleinbuchstaben unterschieden. 
    ### Beispiel: ord("A") = 65, ord("a") = 97
    # Nun beginnt ein neuer Algorithmus. 
    # Dieser unterscheidet sich von dem der einfachen Caesar-Verschlüsselung nur darin, dass die ASCII-Zahlen für Groß- und Kleinbuchstaben unterschiedlich sind.
    encrypted_text = ""
    for i in text:
        if 97 <= ord(i) <= 122:
            encrypted_text += chr((ord(i) + key - 97) % 26 + 97)
        elif 65 <= ord(i) <= 90:
            encrypted_text += chr((ord(i) + key - 65) % 26 + 65)
        elif i == " ":
            encrypted_text += " "
    return encrypted_text

def caesar_upper_and_lower_decryption(text, key):
    # Für die Entschlüsselung wird genau der gleiche Algorithmus verwendet, wie bei der Verschlüsselung.
    # Der einzige Unterschied ist, dass der Schlüssel subtrahiert wird.
    decrypted_text = ""
    for i in text:
        if 97 <= ord(i) <= 122:
            decrypted_text += chr((ord(i) - key - 97) % 26 + 97)
        elif 65 <= ord(i) <= 90:
            decrypted_text += chr((ord(i) - key - 65) % 26 + 65)
        elif i == " ":
            decrypted_text += " "
    return decrypted_text




def caesar_with_german_characters_encryption(text, key):
    # Da in der ursprünglichen Caesar-Verschlüsselung nur die Buchstaben A-Z verwendet werden, gibt es ungemein viele Möglichkeiten, verschieden Algorithmen zu schreiben.
    # Eine weitere Möglichkeit ist die Verschlüsselung von Groß- und Kleinbuchstaben sowie Umlauten.
    # Nun habe ich, der Einfachheit halber, von der ASCII-Tabelle abgesehen und die Umlaute manuell in die Variable des Alphabets eingefügt.
    # Der Rest der Funktion ähnelt den zuvor beschriebenen Algorithmen.
    german_alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'Ä', 'Ö', 'Ü', 'ä', 'ö', 'ü', 'ß', " "]
    encrypted_text = ""
    for i, j in enumerate(text):
        for k, l in enumerate(german_alphabet):
            if j == l:    
                encrypted_text += german_alphabet[((k + key) % len(german_alphabet))]

    return encrypted_text

def caesar_with_german_characters_decryption(text, key):
    # Bei der Entschlüsselung ändert sich wieder nicht viel, außer dass der Schlüssel subtrahiert wird.
    german_alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'Ä', 'Ö', 'Ü', 'ä', 'ö', 'ü', 'ß', " "]
    decrypted_text = ""
    for i, j in enumerate(text):
        for k, l in enumerate(german_alphabet):
            if j == l:
                decrypted_text += german_alphabet[((k - key) % len(german_alphabet))]

    return decrypted_text



def caesar_with_unicode_encryption(text, key):
    # Die letzte Variante der Caesar-Verschlüsselung hat – ironischerweise –, die meisten Möglichkeiten zu verschlüsseln und ist gleichzeitig die simpelste Variante.
    # Hier wird die Unicode-Tabelle verwendet, um die Buchstaben zu verschlüsseln. 
    # Die Tabelle enthält alle Buchstaben, Zahlen und Sonderzeichen, die auf dem Computer dargestellt werden können.
    # Das einzige Problem der Verschlüsselung mit der Unicode-Tabelle ist, dass einige Zeihen der Tabelle nicht dargestellt werden können.
    # Somit können Fehler entstehen, beispielsweise bei der Verschlüsselung von einem Leerzeichen mit dem Schlüssel -24. 
    # Das Leerzeichen wird dann durch eine Grundfunktion wie DEL ersetzt, welche nicht dargestellt werden kann.
    # Eine Entschlüsselung ist nur dann möglich, wenn der Text nicht vom Nutzer sondern automatisch kopiert wird.
    encrypted_text = ""
    for i in text:
        encrypted_text += chr((ord(i) + key) % 1114111)
    return encrypted_text

def caesar_with_unicode_decryption(text,key):
    # Die Entschlüsselung ist funktioniert wieder wie die Verschlüsselung. Außer dass der Schlüssel subtrahiert wird.
    decrypted_text = ""
    for i in text:
        decrypted_text += chr((ord(i) - key) % 1114111)
    return decrypted_text
         