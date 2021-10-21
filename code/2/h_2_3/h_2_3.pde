int Farbe;
void setup(){
  size(100,100);
}
void draw() {
  background(Farbe);
  rectMode(CENTER);
  rect(50, 50, 40, 40);
}
void keyPressed(){
  Farbe = 255;
}
void mousePressed(){
  Farbe = 0;
}  
