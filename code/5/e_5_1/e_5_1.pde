int num = 0;
void draw() {
  while (num <= 49) {
    if (num % 7 == 0) {
      if (num == 0) {
      } else {
        println(num);
      }
    }
    num++;
  }
}