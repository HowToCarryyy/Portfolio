void setup(){
  ellipseMode(CENTER);
  rectMode(CENTER);
  size(120, 120);
}
void draw(){
  for (int i = 40; i <= 150; i += 30){
    fill(0);
    rect(10, i-30, 20, 20);
    for (int e = 10; e <= 120; e += 30){
      fill(255);
      ellipse(i, e, 20, 20);
    }
  }
}