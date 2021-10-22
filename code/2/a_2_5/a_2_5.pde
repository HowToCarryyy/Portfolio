void setup() {  
  size(100, 100);
}

void draw() {
  background(80);
  fill(255);
  ellipse(mouseX, mouseY, 15, 15);
  fill(0);
  ellipse(-mouseX+100, -mouseY+100, 15, 15);
}