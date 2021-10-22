float x = 0;
void draw() {
  if (mousePressed == true){
    x += 0.5;
  }
  background(255);
  ellipse(x, 50, 30, 30);
}