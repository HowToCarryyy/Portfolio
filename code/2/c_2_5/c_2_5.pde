float x = 130;
float y = 100;
float w = 60;
float h = 40;

void setup() {
  size(200, 150);
}

void draw() {
  background(0);
  stroke(255);
  noFill();
  rect(x, y, w, h);
  fill(255);
  ellipse(mouseX, mouseY, 10, 10);
  ellipse(mouseX/3.3333+x,mouseY/3.75+y,3,3);
}