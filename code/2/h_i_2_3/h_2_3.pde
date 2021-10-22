int Farbe;
int Farbe2 = 255;
void setup(){
  size(100,100);
}
void draw() {
  background(Farbe);
  fill(Farbe2);
  ellipse(50, 50, 40, 40);
}
void keyPressed(){
  Farbe = 255;
  Farbe2 = 0;
}
void mousePressed(){
  Farbe = 0;
  Farbe2 = 255;
}