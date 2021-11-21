Ball ball1;
Player player1;
Player player2;
int score1;
int score2;
void setup() {
  size(1000, 500);
  ball1 = new Ball(20, 20, width/2, height/2, 2, 2);
  player1 = new Player(20, 50, 20, 20);
  player2 = new Player(20, 50, width-40, 20);
}
void draw() {
  ellipseMode(CENTER);
  background(255);
  ball1.ausfuehren();
  ball1.kollision();
  ball1.score();
  player1.ausfuehren();
  player2.ausfuehren();
  if (keyPressed) {
    if (key == 'w') {
      player1.movement(-3);
    }
    if (key == 's') {
      player1.movement(3);
    }
  }
  if (mousePressed) {
    if (mouseButton == LEFT) {
      player2.movement(-3);
    }
    if (mouseButton == RIGHT) {
      player2.movement(3);
    }
  }
}

class Player {
  float pw, ph, px, py;
  Player (float pwidth, float pheight, float posx, float posy) {
    pw = pwidth;
    ph = pheight;
    px = posx;
    py = posy;
  }
  void ausfuehren() {
    fill(255);
    rect(px, py, pw, ph);
  }
  void movement(float mov) {
    py += mov;
  }
}

class Ball {
  float rx, ry, posx, posy, movx, movy;
  Ball (float w, float h, float x, float y, float xs, float ys) {
    rx = w;
    ry = h;
    posx = x;
    posy = y;
    movx = xs;
    movy = ys;
  }
  void ausfuehren() {
    ellipse(posx, posy, rx, ry);
    posx += movx;
    posy += movy;
  }
  void kollision() {
    if (posy > height-10) {
      movy = movy *(-1);
    }
    if (posy < 10) {
      movy = movy * (-1);
    }
    if (posy > player2.py && posy < player2.py+50 && posx >= width-50 && posx <= width-49) {
      movx = movx * (-1);
    }
    if (posy > player1.py && posy < player1.py+50 && posx <= 50 && posx >= 49) {
      movx = movx * (-1);
    }
  }
  void score() {
    if (posx < 0) {
      score2++;
      posx = width/2;
      posy = height/2;
      movx = (int(random(0, 1.49))*4)-2;
    }
    if (posx > width) {
      score1++;
      posx = width/2;
      posy = height/2;
      movx = (int(random(0, 1.49))*4)-2;
    }
    fill(0);
    text(score1+" : "+score2, width/2, 20);
  }
}
