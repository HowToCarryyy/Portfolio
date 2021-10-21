int x;
void setup(){
  size(100,100);
  background(125);
  x = 0;
}
void draw(){
  if (mousePressed == true){
    x = 1;
  } else if (keyPressed == true){
    x = 2;
  }
  if (x == 1){
    background(255,0,0);
  } else if (x == 2){
    background(0,255,0);
  }
}
