def vigenere_encrypt(input, key):
    output = [" " if x == " " else chr((ord(input[x]) + (ord(key[x % len(key)]) - 65) - 65) % 26 + 65) for x in range(len(input))]
    return "".join(output)

def vigenere_decrypt(input, key):
    output = [" " if x == " " else chr((ord(input[x]) - (ord(key[x % len(key)]) - 65) - 65) % 26 + 65) for x in range(len(input))]
    return "".join(output)