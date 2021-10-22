boolean kreis = true;
void draw(){
  if (kreis){
    fill(255);
    ellipse(mouseX,mouseY,30,30);
  } else{
    fill(0);
    rect(mouseX,mouseY,30,30);
  }
}
void mouseClicked(){
  kreis = !kreis;
}