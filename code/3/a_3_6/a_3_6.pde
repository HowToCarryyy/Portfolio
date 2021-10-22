int button1x = 125;
int button1y = 20;
int button1width = 250;
int button1height = 40;
int button2x = 125;
int button2y = 120;
int button2width = 250;
int button2height = 40;
int button3x = 125;
int button3y = 220;
int button3width = 250;
int button3height = 40;
int bgcolor1 = 0;
int bgcolor2 = 0;
int bgcolor3 = 0;
void setup() {
  size(500, 300);
}
void draw() {
  background(bgcolor1, bgcolor2, bgcolor3);

  if (button1x <= mouseX && mouseX <= button1x + button1width && button1y <= mouseY && mouseY <= button1y + button1height) {
    fill(255, 0, 0);
    if (mousePressed) {
      bgcolor1 = 255;
      bgcolor2 = 0;
      bgcolor3 = 0;
    }
  }
  rect(button1x, button1y, button1width, button1height);
  fill(255);
  if (button2x <= mouseX && mouseX <= button2x + button2width && button2y <= mouseY && mouseY <= button2y + button2height) {
    fill(0, 255, 0);
    if (mousePressed) {
      bgcolor1 = 0;
      bgcolor2 = 255;
      bgcolor3 = 0;
    }
  }
  rect(button2x, button2y, button2width, button2height);
  fill(255);
  if (button3x <= mouseX && mouseX <= button3x + button3width && button3y <= mouseY && mouseY <= button3y + button3height) {
    fill(0, 0, 255);
    if (mousePressed) {
      bgcolor1 = 0;
      bgcolor2 = 0;
      bgcolor3 = 255;
    }
  }
  rect(button3x, button3y, button3width, button3height);
  fill(255);
}
void mouseClicked() {
}
