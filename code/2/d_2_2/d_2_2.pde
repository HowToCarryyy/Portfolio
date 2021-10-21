void setup(){
  size(1000,1000);
}
void draw(){
  if (keyPressed == true){
    fill(random(255));
    textSize(random(20,300));
    text("hallo",random(1000),random(1000));
  }
}
