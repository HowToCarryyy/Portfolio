void draw(){
  noCursor();
  background(80);
  rectMode(CENTER);
  if (mouseX > 50){
    fill(0);
    rect(mouseX,mouseY,10,10);
  } else{
    fill(255);
    ellipse(mouseX, mouseY,10,10);
  }
}