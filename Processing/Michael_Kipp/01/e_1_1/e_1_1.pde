void setup(){
  size(1000,1000);
  background(255);
}
void draw(){
  background(255);
  ellipse(500,500,225,225);
  arc(500,500, 175, 175, 0.4, PI-0.4); //Mund
  triangle(500,500,525,525,475,525); //Nase
  ellipse(450,500,25,25); // Auge links
  ellipse(550,500,25,25); // Auge rechts
}
