PVector ball = new PVector(50, 50);
PVector rgb = new PVector(80, 80, 80);
void draw() {
  background(rgb.x, rgb.y, rgb.z);
  ellipse(ball.x, ball.y, 20, 20);
  ball.x++;
  if (ball.x >= width) {
    ball.x = 0;
  }
}
void keyPressed() {
  if (keyCode == 49) {
    rgb.set(26, 26, 26);
  } else if (keyCode == 50) {
    rgb.set(255, 204, 50);
  }
}