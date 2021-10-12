/* @pjs font="/Uhr/NovaMono-Regular.ttf"; */
int fontSize;
int hide;
PFont mono;
PFont mono2;
int m;
int h;
int mr;
int hr;
//String[] hours;
void setup() {
  size(960, 880);
  fontSize = 80;
  mono = createFont("/Uhr/NovaMono-Regular.ttf", fontSize);
  mono2 = createFont("Roboto-Regular.ttf", 30);
  //hours[0] = "test";
}
void draw() {
  background(80, 80, 80);
  m = minute();
  h = hour();
  textFont(mono2);
  fill(0);

  if (hide % 2 != 0) {
    if (h > 12) {
      text("abends", 1, 874);
    } else {
      text("morgens", 1, 874);
    }
  }
  textSize(fontSize);
  textFont(mono);
  fill(95);
  text("E S K I S T A F Ü N F", 1, fontSize+5);
  text("Z E H N Z W A N Z I G", 1, 2*fontSize+10);
  text("D R E I V I E R T E L", 1, 3*fontSize+15);
  text("V O R F U N K N A C H", 1, 4*fontSize+20);
  text("H A L B A E L F Ü N F", 1, 5*fontSize+25);
  text("E I N S X Ä M Z W E I", 1, 6*fontSize+30);
  text("D R E I A U J V I E R", 1, 7*fontSize+35);
  text("S E C H S N L A C H T", 1, 8*fontSize+40);
  text("S I E B E N Z W Ö L F", 1, 9*fontSize+45);
  text("Z E H N E U N K U H R", 1, 10*fontSize+50);
  fill(255);
  text("E S   I S T          ", 1, fontSize+5);

  // minute return
  if (m >= 0 && m < 5) {
    text("                U H R", 1, 10*fontSize+50);
  } else if (m >= 5 && m < 10) {
    text("              F Ü N F", 1, fontSize+5);
    text("              N A C H", 1, 4*fontSize+20);
  } else if (m >= 10 && m < 15) {
    text("Z E H N              ", 1, 2*fontSize+10);
    text("              N A C H", 1, 4*fontSize+20);
  } else if (m >= 15 && m < 20) {
    text("        V I E R T E L", 1, 3*fontSize+15);
    text("              N A C H", 1, 4*fontSize+20);
  } else if (m >= 20 && m < 25) {
    text("        Z W A N Z I G", 1, 2*fontSize+10);
    text("              N A C H", 1, 4*fontSize+20);
  } else if (m >= 25 && m < 30) {
    text("              F Ü N F", 1, fontSize+5);
    text("V O R                ", 1, 4*fontSize+20);
    text("H A L B              ", 1, 5*fontSize+25);
  } else if (m >= 30 && m < 35) {
    text("H A L B              ", 1, 5*fontSize+25);
  } else if (m >= 35 && m < 40) {
    text("              F Ü N F", 1, fontSize+5);
    text("              N A C H", 1, 4*fontSize+20);
    text("H A L B              ", 1, 5*fontSize+25);
  } else if (m >= 40 && m < 45) {
    text("        Z W A N Z I G", 1, 2*fontSize+10);
    text("V O R                ", 1, 4*fontSize+20);
  } else if (m >= 45 && m < 50) {
    text("        V I E R T E L", 1, 3*fontSize+15);
    text("V O R                ", 1, 4*fontSize+20);
  } else if (m >= 50 && m < 55) {
    text("Z E H N              ", 1, 2*fontSize+10);
    text("V O R                ", 1, 4*fontSize+20);
  } else if (m >= 55 && m < 60) {
    text("              F Ü N F", 1, fontSize+5);
    text("V O R                ", 1, 4*fontSize+20);
  }

  // hour return
  if (m >= 25) {
    h++;
    if (h == 24 || h == 0) {
      h = 12;
    }
  }
  if (h > 12) {
    h -= 12;
  }
  if (h == 0) {
    text("            Z W Ö L F", 1, 9*fontSize+45);
  } else if (h == 1) {
    text("E I N S              ", 1, 6*fontSize+30);
  } else if (h == 2) {
    text("              Z W E I", 1, 6*fontSize+30);
  } else if (h == 3) {
    text("D R E I              ", 1, 7*fontSize+35);
  } else if (h == 4) {
    text("              V I E R", 1, 7*fontSize+35);
  } else if (h == 5) {
    text("              F Ü N F", 1, 5*fontSize+25);
  } else if (h == 6) {
    text("S E C H S            ", 1, 8*fontSize+40);
  } else if (h == 7) {
    text("S I E B E N          ", 1, 9*fontSize+45);
  } else if (h == 8) {
    text("              A C H T", 1, 8*fontSize+40);
  } else if (h == 9) {
    text("      N E U N        ", 1, 10*fontSize+50);
  } else if (h == 10) {
    text("Z E H N              ", 1, 10*fontSize+50);
  } else if (h == 11) {
    text("          E L F       ", 1, 5*fontSize+25);
  } else if (h == 12) {
    text("            Z W Ö L F", 1, 9*fontSize+45);
  }
  //save("time.jpg");
  //delay(6000);
}
void mouseClicked() {
  hide++;
}
