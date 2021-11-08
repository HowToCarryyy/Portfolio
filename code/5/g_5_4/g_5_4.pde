void setup() {
  size(41, 41);
  for (int i = 0; i <= 3; i++) {
    for (int e = 0; e <= 3; e++) {
      if ((i+e)%2 == 0){
        fill(0);
      } else{
        fill(255);
      }
      rect(i*10, e*10, 10, 10);
    }
  }
}