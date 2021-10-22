float x = 50;
void setup(){
  size(100,100);
}
void draw(){
  background(80);
  rectMode(CENTER);
  rect(50,50,x,x);
}
void keyPressed(){
  x++;
}
void mousePressed(){
  x--;
}