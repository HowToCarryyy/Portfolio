/* @pjs font="/watch/NovaMono-Regular.ttf"; */
int fontSize;
int hide;
PFont mono;
PFont mono2;
int m;
int h;
int mr;
int hr;
void setup() {
  size(947, 880);
  fontSize = 80;
  mono = createFont("NovaMono-Regular.ttf", fontSize);
  mono2 = createFont("Roboto-Regular.ttf", 30);
}
void draw() {
  background(80, 80, 80);
  m = minute();
  h = hour();
  textFont(mono2);
  fill(0);

  if (hide % 2 != 0) {
    if (h > 12) {
      text("PM", 1, 874);
    } else {
      text("AM", 1, 874);
    }
  }
  textSize(fontSize);
  textFont(mono);
  fill(125, 125, 125);
  text("I T L I S A S A M P M", 1, fontSize+5);
  text("A C Q U A R T E R D C", 1, 2*fontSize+10);
  text("T W E N T Y F I V E X", 1, 3*fontSize+15);
  text("H A L F S T E N F T O", 1, 4*fontSize+20);
  text("P A S T E R U N I N E", 1, 5*fontSize+25);
  text("O N E S I X T H R E E", 1, 6*fontSize+30);
  text("F O U R F I V E T W O", 1, 7*fontSize+35);
  text("E I G H T E L E V E N", 1, 8*fontSize+40);
  text("S E V E N T W E L V E", 1, 9*fontSize+45);
  text("T E N S E O C L O C K", 1, 10*fontSize+50);
  fill(255);
  text("I T   I S           ", 1, fontSize+5);

  // minute return
  if (m >= 0 && m < 5) {
    text("          O C L O C K", 1, 10*fontSize+50);
  } else if (m >= 5 && m < 10) {
    text("            F I V E  ", 1, 3*fontSize+15);
    text("P A S T              ", 1, 5*fontSize+25);
  } else if (m >= 10 && m < 15) {
    text("          T E N      ", 1, 4*fontSize+20);
    text("P A S T              ", 1, 5*fontSize+25);
  } else if (m >= 15 && m < 20) {
    text("    Q U A R T E R    ", 1, 2*fontSize+10);
    text("P A S T              ", 1, 5*fontSize+25);
  } else if (m >= 20 && m < 25) {
    text("T W E N T Y          ", 1, 3*fontSize+15);
    text("P A S T              ", 1, 5*fontSize+25);
  } else if (m >= 25 && m < 30) {
    text("T W E N T Y F I V E  ", 1, 3*fontSize+15);
    text("P A S T              ", 1, 5*fontSize+25);
  } else if (m >= 30 && m < 35) {
    text("H A L F              ", 1, 4*fontSize+20);
    text("P A S T              ", 1, 5*fontSize+25);
  } else if (m >= 35 && m < 40) {
    text("T W E N T Y F I V E  ", 1, 3*fontSize+15);
    text("                  T O", 1, 4*fontSize+20);
  } else if (m >= 40 && m < 45) {
    text("T W E N T Y          ", 1, 3*fontSize+15);
    text("                  T O", 1, 4*fontSize+20);
  } else if (m >= 45 && m < 50) {
    text("    Q U A R T E R    ", 1, 2*fontSize+10);
    text("                  T O", 1, 4*fontSize+20);
  } else if (m >= 50 && m < 55) {
    text("          T E N      ", 1, 4*fontSize+20);
    text("                  T O", 1, 4*fontSize+20);
  } else if (m >= 55 && m < 60) {
    text("            F I V E  ", 1, 3*fontSize+15);
    text("                  T O", 1, 4*fontSize+20);
  }

  // hour return
  if (m >= 35) {
    h++;
    if (h == 24 || h == 0) {
      h = 12;
    }
  }
  if (h > 12) {
    h -= 12;
  }
  if (h == 0) {
    text("          T W E L V E", 1, 9*fontSize+45);
  } else if (h == 1) {
    text("O N E                ", 1, 6*fontSize+30);
  } else if (h == 2) {
    text("                T W O", 1, 7*fontSize+35);
  } else if (h == 3) {
    text("            T H R E E", 1, 6*fontSize+30);
  } else if (h == 4) {
    text("F O U R              ", 1, 7*fontSize+35);
  } else if (h == 5) {
    text("        F I V E      ", 1, 7*fontSize+35);
  } else if (h == 6) {
    text("      S I X          ", 1, 6*fontSize+30);
  } else if (h == 7) {
    text("S E V E N            ", 1, 9*fontSize+45);
  } else if (h == 8) {
    text("E I G H T            ", 1, 8*fontSize+40);
  } else if (h == 9) {
    text("              N I N E", 1, 5*fontSize+25);
  } else if (h == 10) {
    text("T E N                ", 1, 10*fontSize+50);
  } else if (h == 11) {
    text("          E L E V E N", 1, 8*fontSize+40);
  } else if (h == 12) {
    text("          T W E L V E", 1, 9*fontSize+45);
  }
  //save("time.jpg");
  //delay(6000);
}
void mouseClicked() {
  hide++;
}
