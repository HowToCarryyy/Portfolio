int x = 0;

void draw() {
  background(255);
  ellipse(x, 50, 20, 20);
  x++;

  if (x > width/2) {
    x = width/2;
  }
}