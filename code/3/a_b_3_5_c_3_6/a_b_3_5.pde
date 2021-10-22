int EimerX = 250;
int EllipseX1 = 0;
int EllipseX2 = 0;
int EllipseX3 = 0;
int EllipseY1 = 600;
int EllipseY2 = 600;
int EllipseY3 = 600;
int colour1 = 0;
int colour2 = 0;
int colour3 = 0;
int punkte = 0;
int leben = 3;
void setup() {
  size(500, 500);
}
void draw() {
  background(80);
  //Anzeige
  textSize(40);
  text("Punkte: "+punkte, 10, 40);
  text("Leben: "+leben, 290, 40);
  //Tropfen
  if (EllipseY1 >= 500) {
    leben--;
    EllipseY1 = int(random(10, 30));
    EllipseX1 = int(random(10, 490));
    colour1 = int(random(60, 120));
  }
  if (EllipseY2 >= 500) {
    leben--;
    EllipseY2 = int(random(10, 30));
    EllipseX2 = int(random(10, 490));
    colour2 = int(random(60, 120));
  }
  if (EllipseY3 >= 500) {
    leben--;
    EllipseY3 = int(random(10, 30));
    EllipseX3 = int(random(10, 490));
    colour3 = int(random(60, 120));
  }
  EllipseY1++;
  EllipseY2++;
  EllipseY3++;
  fill(colour1);
  ellipse(EllipseX1, EllipseY1, 20, 20);
  fill(colour2);
  ellipse(EllipseX2, EllipseY2, 20, 20);
  fill(colour3);
  ellipse(EllipseX3, EllipseY3, 20, 20);
  //collision
  if (EllipseX1 >= EimerX && EllipseX1 <= EimerX+40 && EllipseY1 <= 470+20 && EllipseY1 >= 470) {
    punkte++;
    EllipseY1 = int(random(10, 30));
    EllipseX1 = int(random(10, 490));
    colour1 = int(random(60, 120));
  }
  if (EllipseX2 >= EimerX && EllipseX2 <= EimerX+40 && EllipseY2 <= 470+20 && EllipseY2 >= 470) {
    punkte++;
    EllipseY2 = int(random(10, 30));
    EllipseX2 = int(random(10, 490));
    colour2 = int(random(60, 120));
  }
  if (EllipseX3 >= EimerX && EllipseX3 <= EimerX+40 && EllipseY3 <= 470+20 && EllipseY3 >= 470) {
    punkte++;
    EllipseY3 = int(random(10, 30));
    EllipseX3 = int(random(10, 490));
    colour3 = int(random(60, 120));
  }
  //Eimer
  fill(255);
  rect(EimerX, 470, 40, 20);
  if (EimerX <= 0) {
    EimerX = 0;
  }
  if (EimerX >= width-40) {
    EimerX = width-40;
  }
  if (EimerX <= 0) {
    EimerX = 0;
  }
}
void keyPressed() {
  //Eimer movement
  if (keyCode == RIGHT) {
    EimerX += 5;
  }
  if (keyCode == LEFT) {
    EimerX -= 5;
  }
}
