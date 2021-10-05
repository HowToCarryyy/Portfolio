int e;
int y = 10;
PImage img;
void setup() {
  size(395, 1000);
  noStroke();
  //frameRate(12);
  colorMode(HSB, 360, 100, 100);
}
void draw() {
  if (keyPressed) {
    Fenster();
  }
}
void Fenster() {
  //ganz links (13er Reihe)
  for (int i = 0; i <= 60; i = i + 5) {
    for (int e = 0; e <= 1000; e = e + 5) {
      fill(random(360), random(40, 90), random(40, 90));
      rect(i, e, 5, 5);
      rect(180-i, e, 5, 5);
    }
  }
  //links+1 (11er Reihe)
  for (int i = 65; i <= 115; i = i + 5) {
    for (int e = 0; e <= 1000; e = e + 5) {
      fill(random(360), random(40, 90), random(40, 90));
      rect(i, e, 5, 5);
      rect(390-i, e, 5, 5);
    }
  }
  //Mitte (5er Reihe [ungespiegelt])
  for (int i = 185; i <= 205; i = i + 5) {
    for (int e = 0; e <= 1000; e = e + 5) {
      fill(random(360), random(40, 90), random(40, 90));
      rect(i, e, 5, 5);
    }
  }
  //mitte rechts (13er Reihe)
  for (int i = 210; i <= 270; i = i + 5) {
    for (int e = 0; e <= 1000; e = e + 5) {
      fill(random(360), random(40, 90), random(40, 90));
      rect(i, e, 5, 5);
      rect(600-i, e, 5, 5);
    }
  }
  fill(0);
  rect(55, 0, 10, 1000);
  rect(120, 0, 10, 1000);
  rect(185, 0, 25, 1000);
  rect(265, 0, 10, 1000);
  rect(330, 0, 10, 1000);
}
