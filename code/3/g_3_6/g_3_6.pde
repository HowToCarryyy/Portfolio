int GateY = 50;
int ballX = 500;
int ballY;
int score;
void setup(){
  size(100,100);
}
void draw(){
  background(80);
  ballX++;
  if (GateY <= 20){
    GateY = 20;
  }
  if (GateY >= height){
    GateY = height;
  }
  if (ballX >= width){
    ballX = 0;
    ballY = round(random(10, 90));
    score++;
  }
  if (ballX <= 80+5 && ballX >= 80 && (ballY >= GateY || ballY <= GateY-20)){
    fill(255,0,0);
    score--;
    ballX = 0;
    ballY = round(random(10, 90));
  }
  rect(80,GateY,5,height-GateY);
  rect(80,GateY-20,5,-height+20);
  fill(255);
  ellipse(ballX, ballY, 10, 10);
  fill(0);
  textSize(15);
  text("Score: "+score, 10, 20);
  fill(255);
}
void keyPressed(){
  if (keyCode == UP){
    GateY -= 5;
  }
  if (keyCode == DOWN){
    GateY += 5;
  }
  if (keyCode == 32){
    score = 0;
  }
}