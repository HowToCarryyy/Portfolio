from js import document

import Vigenere as v


def vigenere_encryption(event):
    text_input = document.getElementById("vigenere_encryption_text")
    key_input = document.getElementById("vigenere_encryption_key")
    encrypted_text = v.vigenere(text_input.value.upper(), key_input.value.upper(), 1)

    document.getElementById("vigenere_decryption_text").value = encrypted_text.upper()
    document.getElementById("vigenere_decryption_key").value = key_input.value.upper()

    output = document.getElementById("vigenere_encryption_output")
    output.style.display = "block"
    final = "Verschlüsselter Text: " + encrypted_text
    Element("vigenere_encryption_output").write(final)

def vigenere_decryption(event):
    text_input = document.getElementById("vigenere_decryption_text")
    key_input = document.getElementById("vigenere_decryption_key")
    decrypted_text = v.vigenere(text_input.value.upper(), key_input.value.upper(), -1)
    output = document.getElementById("vigenere_decryption_output")
    output.style.display = "block"
    final = "Entschlüsselter Text: " + decrypted_text
    Element("vigenere_decryption_output").write(final)