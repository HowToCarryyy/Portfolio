int lineX = 50;
void draw() {
  background(0);
  if (keyPressed) {
    if (keyCode == RIGHT) {
      lineX++;
    } else if (keyCode == LEFT) {
      lineX--;
    }
  }
  fill(0, 255, 0);
  ellipse(50, 50, 10, 10);
  if (lineX <= 50 && lineX+30 >= 40) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }
  rect(lineX, 60, 40, 5, 10);
}