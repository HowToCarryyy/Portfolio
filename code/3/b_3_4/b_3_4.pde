boolean sichtbar = true;
void draw(){
  background(240);
  fill(0);
  if (sichtbar){
    ellipse(50,50,60,60);
  }
}
void mouseClicked(){
  sichtbar = !sichtbar;
}