void setup() {
  size(100, 100);
}

void draw() {
  background(80);
  line(0, 0, mouseX, mouseY);
  ellipse(mouseX, mouseY, 15, 15);
  ellipse(mouseX/2, mouseY/2, 15, 15);
}
