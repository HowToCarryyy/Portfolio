void setup() {
  int counter = 0;
  for (int reihe = 1; reihe < 5; reihe++) {
    println("");
    counter++;
    for (int spalte = 1; spalte < 5; spalte++) {
      if (counter == spalte) {
        print("#");
      } else {
        print(".");
      }
    }
  }
}