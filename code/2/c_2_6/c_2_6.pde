void setup(){
  noCursor();
}
void draw(){
  background(0);
  ellipse(mouseX, mouseY, frameCount%30, frameCount%30);
}
