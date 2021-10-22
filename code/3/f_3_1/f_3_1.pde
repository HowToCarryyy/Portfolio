int x = 0;
int ball = 10;

void draw() {
  background(255);
  ellipse(x, 50, ball, ball);
  x++;
  if (x > width) {
    x = 0;
    ball++;
  }
}