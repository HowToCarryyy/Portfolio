def simple_caesar_encryption(text, key):
    text = text.upper()
    encrypted_text = ""
    for i in text:
        if 65 <= ord(i) <= 90:
            encrypted_text += chr((ord(i) + key - 65) % 26 + 65)
        elif i == " ":
            encrypted_text += " "
        else:
            encrypted_text += i
    return encrypted_text

def simple_caesar_decryption(text, key):
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
    german_alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'Ä', 'Ö', 'Ü', 'ä', 'ö', 'ü', 'ß']
    encrypted_text = ""
    for i, j in enumerate(text):
        for k, l in enumerate(german_alphabet):
            if j == l:    
                encrypted_text += german_alphabet[((k + key) % 59)]

    return encrypted_text

def caesar_with_german_characters_decryption(text, key):
    german_alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'Ä', 'Ö', 'Ü', 'ä', 'ö', 'ü', 'ß']
    decrypted_text = ""
    for i, j in enumerate(text):
        for k, l in enumerate(german_alphabet):
            if j == l:
                decrypted_text += german_alphabet[((k - key) % 59)]

    return decrypted_text



def caesar_with_unicode_encryption(text, key):
    encrypted_text = ""
    for i in text:
        encrypted_text += chr((ord(i) + key) % 1114111)
    return encrypted_text

def caesar_with_unicode_decryption(text,key):
    decrypted_text = ""
    for i in text:
        decrypted_text += chr((ord(i) - key) % 1114111)
    return decrypted_text
         