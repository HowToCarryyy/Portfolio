void setup(){
  size(100,100);
}
void draw(){
  background(255);
  ellipse(0,0,2*sqrt(mouseX*mouseX+mouseY*mouseY),2*sqrt(mouseX*mouseX+mouseY*mouseY));
}
