int gewinnChance = 20;

void draw() {
}

void keyPressed() {
  if (random(100) < gewinnChance) {
    println("Gewonnen");
  } else {
    println("Verloren");
  }
}