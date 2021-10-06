void setup() {
  size(320, 420);
  noStroke();
  background(220);
  colorMode(HSB, 360, 100, 100);
  Vierecke();
}
void draw() {
  if (keyPressed) {
    Vierecke();
  }
}
void Vierecke() {
  for (int i = 10; i <= 300; i = i + 25) {
    for (int e = 10; e <= 400; e = e + 25) {
      fill(random(360), random(40, 50), random(40, 100));
      rect(i, e, 20, 20);
    }
  }
}
