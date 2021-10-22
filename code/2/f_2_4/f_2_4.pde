void draw() {
  background(0);
  fill(255,0,0);
  float a = (frameCount % 60)/60.0;
  float x = 50 - sin(a * 2*PI) *30;
  float y = 50 + cos(a * 2*PI) *30;
  ellipse(x, y, 10, 10);
}