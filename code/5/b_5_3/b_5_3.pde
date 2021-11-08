void draw(){
  background(255);
  fill(0);
  for (int i = 0; i <= mouseX; i +=4){
    ellipse(i, mouseY, 1, 1);
  }
}