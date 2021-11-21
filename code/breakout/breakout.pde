boxClass[] boxes;
int xplayer = 285;
PVector ball = new PVector(300, 695);
PVector ballspeed;
int score = 0;
int ybox = 110;
int xbox = 170;
boolean gameover = true;
void setup() {
  boxes = new boxClass[1080];
  for (int i = 0; i < boxes.length; i++) {
    if (i%27 == 0 && i != 0) {
      ybox += 10;
      xbox -= 270;
    }
    boxes[i] = new boxClass(8*i*1.25+xbox, ybox, 8, 8);
  }
  size(600, 750);
  ballspeed  = new PVector(0.5, -6);
}
void draw() {
  background(0);
  if (!gameover) {
    fill(255);
    text("Score: "+score, 161, 100);
    collision();
    Steuerung();
    Grenze();
    fill(255);
    rect(xplayer, 700, 30, 10);
    ellipse(ball.x, ball.y, 6, 6);
    ballmovement();
    if (ball.y > height) {
      gameover = true;
    }
    for (int i = 0; i < boxes.length; i++) {
      boxes[i].check();
      boxes[i].boxZeichnen();
    }
  }
  if (gameover) {
    fill(255);
    text("Press Space!", width/2, height/2);
    if (keyPressed) {
      if (keyCode == 0) {
        gameover = !gameover;
        ball.x = 300;
        ball.y = 695;
        ballspeed.y = -6;
      }
    }
  }
}

class boxClass {
  float boxheight, boxwidth, xpos, ypos;
  boolean active = true;
  boolean scored = false;
  boxClass(float x, float y, float w, float h) {
    boxheight = h;
    boxwidth = w;
    xpos = x;
    ypos = y;
  }
  void check() {
    if (active) {
      if (ball.x <= xpos+boxwidth && ball.x >= xpos && ball.y <= ypos+boxheight && ball.y >= ypos) {
        score++;
        active = false;
        ballspeed.y = ballspeed.y * (-1);
      }
    }
  }
  void boxZeichnen() {
    if (active) {
      noStroke();
      fill(255, 0, 0);
      rect(xpos, ypos, boxwidth, boxheight);
    }
  }
}

void ballmovement() {
  ball.x = ball.x + ballspeed.x;
  ball.y = ball.y + ballspeed.y;
}


void Steuerung() {
  if (keyPressed) {
    if (keyCode == 39) {
      xplayer += 3;
    }
    if (keyCode == 37) {
      xplayer -= 3;
    }
  }
  if (xplayer < 0) {
    xplayer = 0;
  }
  if (xplayer > 570) {
    xplayer = 570;
  }
}

void Grenze() {
  for (int i = 0; i <= 150; i += 10) {
    fill(80);
    rect(i, 500, 8, 8);
  }
  for (int i = 500; i >= 100; i -= 10) {
    fill(80);
    rect(160, i, 8, 8);
  }
  for (int i = 160; i <= 442; i += 10) {
    fill(80);
    rect(i, 100, 8, 8);
  }
  for (int i = 500; i >= 100; i -= 10) {
    fill(80);
    rect(441, i, 8, 8);
  }
  for (int i = 441; i <= 600; i += 10) {
    fill(80);
    rect(i, 500, 8, 8);
  }
}

void collision() {
  //rechte Kollision
  if (ball.x > 441 && ball.y < 511 && ball.y > 500) {
    ballspeed.y = ballspeed.y*(-1);
  }
  if (ball.x > width-3) {
    ballspeed.x = ballspeed.x*(-1);
  }
  if (ball.x > 441 && ball.y < 500) {
    ballspeed.x = ballspeed.x*(-1);
  }
  //obere Kollision
  if (ball.y <= 108) {
    ballspeed.y = ballspeed.y*(-1);
  }
  //linke Kollision
  if (ball.x < 158 && ball.y < 511 && ball.y > 500) {
    ballspeed.y = ballspeed.y*(-1);
  }
  if (ball.x < 3) {
    ballspeed.x = ballspeed.x*(-1);
  }
  if (ball.x < 168 && ball.y < 500) {
    ballspeed.x = ballspeed.x*(-1);
  }

  if (ball.x > xplayer && ball.x < xplayer+30 && ball.y > 700 && ball.y < 710) {
    ballspeed.y = ballspeed.y * (-1);
  }
}
