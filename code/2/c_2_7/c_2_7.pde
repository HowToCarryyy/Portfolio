void draw(){
  background(0);
  text(frameCount/60,50,20);
  if (mousePressed){
    frameCount = 0;
  }
}
