def vigenere(input, key, direction):
    return "".join([" " if input[x] == " " else chr((ord(input[x]) + (direction * (ord(key[x % len(key)])) + 65) - 65) % 26 + 65) for x in range(len(input))])