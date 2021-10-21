void setup(){
  size(1000,1000);
}
void draw(){
  background(0);
  triangle(10,10,300,10,mouseX,mouseY);
  println("X → Maus = "+ dist(10,10,mouseX,mouseY) + " : Y → Maus = "+ dist(300,10,mouseX,mouseY) );
}
