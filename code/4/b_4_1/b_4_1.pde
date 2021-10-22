PVector ball = new PVector(50, 50);
void draw(){
  background(80);
  ellipse(ball.x, ball.y, 20, 20);
  ball.x++;
  if (ball.x >= width){
    ball.x = 0;
  }
}