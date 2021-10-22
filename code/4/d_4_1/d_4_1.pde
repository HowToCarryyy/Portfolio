PVector pos = new PVector(50, 50, 0);
PVector speed = new PVector(random(-3, 3), random(-3, 3), 0);
PVector size = new PVector(20, 20, 0);
void draw() {
  background(80);
  ellipse(pos.x, pos.y, size.x, size.y);
  pos.add(speed);
  if (pos.x >= width) {
    speed.x = -speed.x;
  } else if (pos.x <= 0) {
    speed.x = -speed.x;
  }
  if (pos.y >= height) {
    speed.y = -speed.y;
  } else if (pos.y <= 0) {
    speed.y = -speed.y;
  }
}