from js import document

import Caesar as c


def simple_caesar_encryption(event):
    text_input = document.getElementById("simple_caesar_encryption_text")
    number_input = document.getElementById("simple_caesar_encryption_number")
    encrypted_text = c.simple_caesar_encryption(text_input.value, int(number_input.value))

    document.getElementById("simple_caesar_decryption_text").value = encrypted_text
    document.getElementById("simple_caesar_decryption_number").value = int(number_input.value)

    output = document.getElementById("simple_caesar_encryption_output")
    output.style.display = "block"
    final = "Verschlüsselter Text: " + encrypted_text
    Element("simple_caesar_encryption_output").write(final)

def simple_caesar_decryption(event):
    text_input = document.getElementById("simple_caesar_decryption_text")
    number_input = document.getElementById("simple_caesar_decryption_number")
    decrypted_text = c.simple_caesar_decryption(text_input.value, int(number_input.value))
    output = document.getElementById("simple_caesar_decryption_output")
    output.style.display = "block"
    final = "Entschlüsselter Text: " + decrypted_text
    Element("simple_caesar_decryption_output").write(final)