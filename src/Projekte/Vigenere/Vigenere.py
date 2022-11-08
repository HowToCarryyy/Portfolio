def vigenere(input, key, direction):
    return "".join([" " if input[x] == " " else chr((ord(input[x]) + (direction * (ord(key[x % len(key)])) + 65) - 65) % 26 + 65) for x in range(len(input))])
    # Die Verschlüsselung wird durchgeführt, indem der Wert des Buchstaben (0-25) mit dem Modulo-Wert des Schlüsselbuchstaben (0-25) addiert wird. 
    # Dies wird mit jedem Buchstaben des Textes und Schlüssels durchgeführt. Wenn der Schlüssel kürzer ist als der Text, wird der Schlüssel wiederholt.
    # Die Vigenere Verschlüsselung ist zwar polyalphabetische symmetrische Verschlüsselung, ist aber theoretisch nicht knackbar, wenn der Schlüssel genauso lang ist, wie der Klartext.
    # 
    # In der Implementierung meiner Vigenere Verschlüsselung habe ich versucht, eine funktionsfähige Verschlüsselung in so wenig Zeilen wie möglich zu schreiben. 
    # Am Ende der Zeile wird die for-Schleife für die Verschlüsselung ausfgeführt. Zu Beginn wird die if-Bedingung gestellt.