void setup(){
  noCursor();
}
void draw() {
  background(255);
  for (int i = 30; i >= 0; i -= 10){
    ellipse(mouseX, mouseY, i, i);
  }
}