float x;
float x2 = 1;
void setup(){
  size(100,100);
}
void draw(){
  background(80);
  x = x * x2;
  x++;
  fill(0,255,0);
  ellipse(x,50,20,20);
  if ( x > width - 10){
    x = 10;
  }
}
void keyPressed(){
  x2 += 0.01;
}
void mouseClicked(){
  x2 = 1;
}
