void setup(){
  size(100,100);
}
void draw(){
  background(255);
  line(mouseX,mouseY,(mouseX-100)*-1,(mouseY-100)*-1);
}
