int playerX = 0;
int ballX = 125;
int ballY = 125;
boolean boolY = true;
boolean boolX = true;
int Xran = round(random(0.5, 2.0));
int Yran = round(random(0.5, 2.0));
boolean gameOver = false;
void setup() {
  size(250, 250);
}
void draw() {
  background(80);
  if (gameOver == false) {
    rect(playerX, height-25, 50, 10);
    if (ballX >= width) {
      boolX = true;
    } else if (ballX <= 0) {
      boolX = false;
    }
    if (boolX == true) {
      ballX = ballX-Xran;
    } else if (boolX == false) {
      ballX = ballX+Xran;
    }
    if (ballY <= 0) {
      boolY = false;
    } else if (ballY >= height) {
      gameOver = true;
    }
    if (ballX <= playerX+50 && ballX >= playerX && ballY >= height-30 && ballY <= height-15) {
      boolY = true;
    }
    if (boolY == false) {
      ballY = ballY+Yran;
    } else if (boolY == true) {
      ballY = ballY-Yran;
    }
    ellipse(ballX, ballY, 10, 10);
  } else {
    textSize(30);
    text("Press SPACE", 30, 125);
  }
}
void keyPressed() {
  if (keyCode == LEFT) {
    playerX -= 5;
  }
  if (keyCode == RIGHT) {
    playerX += 5;
  }
  if (gameOver == true) {
    if (key == 32) {
      gameOver = false;
      ballX = 125;
      ballY = 125;
      boolY = true;
    }
  }
}