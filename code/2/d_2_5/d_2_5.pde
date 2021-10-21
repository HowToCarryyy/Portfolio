void setup(){
  size(125,100);
}
void draw(){
  background(80);
  int y = mouseY;
  fill(0);
  rect(0,100-y, 35, 300);
  rect(45,100-y, 35, 300);
  rect(90,100-y, 35, 300);
  fill(255);
  rect(25, y, 25, 300);
  rect(75, y, 25, 300);
}
