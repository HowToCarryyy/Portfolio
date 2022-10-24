from js import document, Element

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

def caesar_upper_and_lower_encryption(event):
    text_input = document.getElementById("caesar_upper_and_lower_encryption_text")
    number_input = document.getElementById("caesar_upper_and_lower_encryption_number")
    encrypted_text = c.caesar_upper_and_lower_encryption(text_input.value, int(number_input.value))

    document.getElementById("caesar_upper_and_lower_decryption_text").value = encrypted_text
    document.getElementById("caesar_upper_and_lower_decryption_number").value = int(number_input.value)

    output = document.getElementById("caesar_upper_and_lower_encryption_output")
    output.style.display = "block"
    final = "Verschlüsselter Text: " + encrypted_text
    Element("caesar_upper_and_lower_encryption_output").write(final)

def caesar_upper_and_lower_decryption(event):
    text_input = document.getElementById("caesar_upper_and_lower_decryption_text")
    number_input = document.getElementById("caesar_upper_and_lower_decryption_number")
    decrypted_text = c.caesar_upper_and_lower_decryption(text_input.value, int(number_input.value))
    output = document.getElementById("caesar_upper_and_lower_decryption_output")
    output.style.display = "block"
    final = "Entschlüsselter Text: " + decrypted_text
    Element("caesar_upper_and_lower_decryption_output").write(final)

def caesar_with_german_characters_encryption(event):
    text_input = document.getElementById("caesar_with_german_characters_encryption_text")
    number_input = document.getElementById("caesar_with_german_characters_encryption_number")
    encrypted_text = c.caesar_with_german_characters_encryption(text_input.value, int(number_input.value))

    document.getElementById("caesar_with_german_characters_decryption_text").value = encrypted_text
    document.getElementById("caesar_with_german_characters_decryption_number").value = int(number_input.value)

    output = document.getElementById("caesar_with_german_characters_encryption_output")
    output.style.display = "block"
    final = "Verschlüsselter Text: " + encrypted_text
    Element("caesar_with_german_characters_encryption_output").write(final)

def caesar_with_german_characters_decryption(event):
    text_input = document.getElementById("caesar_with_german_characters_decryption_text")
    number_input = document.getElementById("caesar_with_german_characters_decryption_number")
    decrypted_text = c.caesar_with_german_characters_decryption(text_input.value, int(number_input.value))
    output = document.getElementById("caesar_with_german_characters_decryption_output")
    output.style.display = "block"
    final = "Entschlüsselter Text: " + decrypted_text
    Element("caesar_with_german_characters_decryption_output").write(final)

def caesar_with_unicode_encryption(event):
    text_input = document.getElementById("caesar_with_unicode_encryption_text")
    number_input = document.getElementById("caesar_with_unicode_encryption_number")
    encrypted_text = c.caesar_with_unicode_encryption(text_input.value, int(number_input.value))

    document.getElementById("caesar_with_unicode_decryption_text").value = encrypted_text
    document.getElementById("caesar_with_unicode_decryption_number").value = int(number_input.value)

    output = document.getElementById("caesar_with_unicode_encryption_output")
    output.style.display = "block"
    final = "Verschlüsselter Text: " + encrypted_text
    Element("caesar_with_unicode_encryption_output").write(final)

def caesar_with_unicode_decryption(event):
    text_input = document.getElementById("caesar_with_unicode_decryption_text")
    number_input = document.getElementById("caesar_with_unicode_decryption_number")
    decrypted_text = c.caesar_with_unicode_decryption(text_input.value, int(number_input.value))
    output = document.getElementById("caesar_with_unicode_decryption_output")
    output.style.display = "block"
    final = "Entschlüsselter Text: " + decrypted_text
    Element("caesar_with_unicode_decryption_output").write(final)