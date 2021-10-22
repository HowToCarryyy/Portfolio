int x = 0;
float y = 0;
int opacity;

void draw() {
  stroke(opacity);
  line(x, 0, x, y);
  x += 1;
  y += 1;
  opacity += 2;
}