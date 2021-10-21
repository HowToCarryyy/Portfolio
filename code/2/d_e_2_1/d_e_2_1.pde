void setup(){
  size(1000,1000);
  noCursor();
}
void draw(){
  cursor(CROSS);
  background(255);
  rectMode(CENTER);
  rect(500,500,mouseX,mouseX);
  line(mouseX,0,mouseX,1000);
  line(0,mouseY,1000,mouseY);
}
