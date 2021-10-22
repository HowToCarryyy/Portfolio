int x = 10;
int y = 10;
void setup(){
  size(100,100);
}
void draw(){
  background(80);
  x++;
  ellipse(x,y,20,20);
  if ( x > width - 10){
    x = 10;
  }
}
void mouseClicked(){
  y--;
}
void keyPressed(){
  y++;
}