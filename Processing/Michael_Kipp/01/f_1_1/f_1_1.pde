int y;
float x;
void setup() {
  size(125, 150);
  y = 0;
  x = 0;
}
void draw() {
  for (int i = 0; i < 400; i += 25) {
    if (i >= 225 && i < 250) {
      y = 25;
      x = i - 187.5;
      rect(x, y, 25, 25);
    }
    if (i >= 175 && i < 225) {
      y = 50;
      x = i - 150;
      rect(x, y, 25, 25);
    }
    if (i >= 100 && i < 175) {
      y = 75;
      x = i - 87.5;
      rect(x, y, 25, 25);
    } 
    if (i >= 0 && i < 100) {
      y = 100;
      x = i;
      rect(x, y, 25, 25);
    }
  }
}
