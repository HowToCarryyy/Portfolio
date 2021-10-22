void draw() {
  background(255);
  float winkel= mouseY/100.0 * 2 * PI;
  float x = 50+40 * sin(winkel);
  float y = 50-40 * cos(winkel);
  ellipse(50,50,90,90);
  line(50, 50, x, y);
}