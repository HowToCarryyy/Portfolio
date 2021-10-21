void setup(){
  size(100,100);
}
void draw(){
  background(255);
  line(mouseX,0,mouseX,100);
  ellipse(mouseX/2,50,mouseX,mouseX);
}
