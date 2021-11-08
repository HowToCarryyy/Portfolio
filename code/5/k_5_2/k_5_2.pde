int cx = 100;
int cy = 100;
float a = 0.03;
void setup() {
  size(200, 200);
  noStroke();
  for (float i = 0; i <= 2480; i++){
      float c = radians(i);
      float x = cx + a * i * cos(c);
      float y = cy + a * i * sin(c);
      ellipse(x,y , 5, 5);
      a += 0.00001;
  }
}