void setup(){
  size(500,500);
  noCursor();
}
void draw(){
  cursor(CROSS);
  background(255);
  rectMode(CENTER);
  rect(250,250,mouseX,mouseX);
  line(mouseX,0,mouseX,1000);
  line(0,mouseY,1000,mouseY);
}
