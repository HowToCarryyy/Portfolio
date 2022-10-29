def vigenere_encryption(input, key):
    output = [" " if x == " " else chr((ord(input[x]) + (ord(key[x % len(key)]) - 65) - 65) % 26 + 65) for x in range(len(input))]
    return "".join(output)

def vigenere_decryption(input, key):
    output = [" " if x == " " else chr((ord(input[x]) - (ord(key[x % len(key)]) - 65) - 65) % 26 + 65) for x in range(len(input))]
    return "".join(output)