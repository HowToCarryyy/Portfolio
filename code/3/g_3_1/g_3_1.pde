int ball = 0;
void draw(){
  background(0);
  ellipse(50,50,ball,ball);
  ball++;
  if (ball == 100){
    ball = 0;
  }
}