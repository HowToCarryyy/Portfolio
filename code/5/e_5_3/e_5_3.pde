int num = 6;
void draw(){
  background(255);
  for (int i = mouseX; i < mouseX+num*10;i += 10){
    for (int e = mouseY; e < mouseY+num*10; e += 10){
      line(mouseX, e, mouseX+((num*10)-10), e);
      line(i, mouseY, i, mouseY+((num*10)-10));
     }
  }
}