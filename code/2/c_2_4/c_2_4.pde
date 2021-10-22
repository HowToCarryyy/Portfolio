int x = 10;
void setup(){
  size(100,100);
}
void draw(){
  background(80);
  x++;
  ellipse(x,50,20,20);
  if ( x > width - 10){
    x = 10;
  }
}