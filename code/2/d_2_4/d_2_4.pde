int Farbe;
int x = 10;
void setup(){
  size(100,100);
}
void draw(){
  background(Farbe);
  x++;
  fill(255,0,0);
  ellipse(x,50,20,20);
  if ( x > width - 10){
    x = 10;
  }
}
void keyPressed(){
  Farbe = 255;
}
void mousePressed(){
  Farbe = 0;
}
