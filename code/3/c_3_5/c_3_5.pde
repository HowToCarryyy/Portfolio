int GateY = 50;
void setup(){
  size(100,100);
}
void draw(){
  background(80);
  rect(50,GateY,5,height-GateY,20);
  rect(50,GateY-20,5,-height+20,20);
  if (GateY <= 20){
    GateY = 20;
  }
  if (GateY >= height){
    GateY = height;
  }
}
void keyPressed(){
  if (keyCode == UP){
    GateY -= 1;
  }
  if (keyCode == DOWN){
    GateY += 1;
  }
}
