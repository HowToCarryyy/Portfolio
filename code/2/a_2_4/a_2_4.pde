float x = 0;
void setup(){
  size(100,100);
}
void draw(){
  background(80);
  ellipse(x,50,10,10);
}
void mouseClicked(){
  x += 5;
}
