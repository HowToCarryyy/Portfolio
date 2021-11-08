void setup(){
}
void draw(){
  translate(50, 50);
  for (int i = 0; i <= 360; i += 45){
    for (int e = 0; e <= 3; e++){
      ellipse(cos(radians(i)) * 20 * e, sin(radians(i)) * 20 * e, 10, 10);
    }
  }
}