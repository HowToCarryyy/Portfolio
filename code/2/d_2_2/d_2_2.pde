void setup(){
  size(100,100);
}
void draw(){
  if (keyPressed == true){
    fill(random(255));
    textSize(random(10,50));
    text("hallo",random(100),random(100));
  }
}