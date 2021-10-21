float x = 50;
float y = 50;
void setup(){
  size(100,100);
}
void draw(){
  background(80,80,80);
  ellipse(x,y,10,10);
}
void mouseClicked(){
  x = random(10,90);
  y = random(10,90);
}
