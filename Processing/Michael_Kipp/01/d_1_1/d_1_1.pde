void setup() {
  size(1000, 1000);
}
void draw() {
  beginShape();
  vertex(500, 500);
  vertex(465, 590);
  vertex(500, 566);
  vertex(535, 590);
  vertex(500, 500);
  endShape();
  beginShape();
  vertex(450, 533);
  vertex(500, 566);
  vertex(550, 533);
  vertex(450, 533);
  endShape();
  line(500, 500, 465, 590);
  line(500, 500, 535, 590);
}
