float x = 12.5;
void setup(){
  size(1000,1000);
  }
void draw(){
  fill(0);
  ellipse(500,500,100,100);
  fill(255);
  ellipse(480,490,20,20);
  ellipse(520,490,20,20);
  fill(0);
  ellipse(480,490,5,5);
  ellipse(520,490,5,5);
  fill(255);
  rect(470, 515, 60, 20, 30);
  fill(0);
  line(470, 525, 530, 525);
  for (float i = 0; i < 62.5; i = i + 12.5){
    x = i + 475;
    line(x,500,x,540);
  }
}
