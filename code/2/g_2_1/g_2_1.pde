void setup(){
  size(100,100);
  background(255);
  fill(0);
  rect(20,20,60,60);
}
void draw(){
  fill(255);
  noStroke();
  ellipse(mouseX,mouseY,15,15);
}