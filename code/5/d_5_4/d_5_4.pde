int counter = 4;
int counter2 = 0;
void setup() {
  for (int e = 0; e < 4; e++) {
    for (int i = counter2; i > 0; i--) {
      print(".");
    }
    for (int i = counter; i > 0; i--) {
      print("#");
    }
    
    println("");
    counter--;
    counter2++;
  }
}