void draw() {
  background(255);
  for (int i = 0; i < mouseY; i += 4) {
    for (int e = 0; e < mouseX; e += 4) {
      ellipse(e, i, 2, 2);
    }
  }
}