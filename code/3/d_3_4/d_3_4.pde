boolean bool = true;
int x = 0;
int y = 0;
void draw() {
  background(80);
  ellipse(x, y, 30, 30);
  if (bool == true) {
    x++;
  } else if (bool == false) {
    y++;
  }
  if (x > width){
    x = 0;
  }
  if (y > height){
    y = 0;
  }
}
void mouseClicked() {
  bool = !bool;
}
