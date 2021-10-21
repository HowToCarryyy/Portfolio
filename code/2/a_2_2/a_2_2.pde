void setup(){
  size(100,100);
}
void draw(){
  if (keyPressed == true){
    fill(random(255),random(255),random(255));
    rect(random(100),random(100),random(5,40),random(5,40));
  }
}
