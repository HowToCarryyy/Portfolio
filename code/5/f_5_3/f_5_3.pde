int kreise = 3;
void setup(){
  ellipseMode(CENTER);
}
void draw(){
  background(255);
  for (int i = kreise*10;i >= 0; i -= 10){
    ellipse(50, 50, i, i);
  }
}
void mouseClicked(){
  kreise++;
}