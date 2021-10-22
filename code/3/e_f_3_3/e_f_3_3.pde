int x = 0;

void draw() {
  background(0);

  // Linien zum Markieren der Zone
  stroke(255);
  line(25, 0, 25, height);
  line(75, 0, 75, height);
  if (x > 25 && x < 75){
    fill(255,0,0);
  }else{
    fill(255);
  }
  // hier wird animiert...
  ellipse(x, 25, 20, 20);
  if (x < 25 || x > 75){
    fill(255,0,0);
  }else{
    fill(255);
  }
  ellipse(x, 75, 20, 20);
  x++;
  if (x > width) {
    x = 0;
  }

}