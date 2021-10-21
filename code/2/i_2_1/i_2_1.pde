void setup(){
  size(100,100);
}
void draw(){
  background(255);
  if (mouseX < 50){
    rect(mouseX,mouseY,100-2*mouseX,100-2*mouseY,5);
  } else if (mouseX >= 50){
    rect((mouseX-100)*-1, mouseY, (100-(2*mouseX))*-1,100-(2*mouseY),5);
  }
}
