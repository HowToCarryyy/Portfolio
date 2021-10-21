void setup(){
  size(255,255);
}
void draw(){
  colorMode(HSB);
  if (mousePressed == true){
    background(random(360),mouseX,255);
  }
}