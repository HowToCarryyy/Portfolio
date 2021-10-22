String Wanze = "Wanze";
String Wanze2 = "Wanze";
int id = 1;
void setup() {
}
void draw() {
  background(0);
  textSize(25);
  textAlign(CENTER);
  text(Wanze2, 50, 50);
}
void mouseClicked() {
  Wanze2 = Wanze.substring(id);
  id++;
  if (id == 6) {
    Wanze2 = "";
    id = 0;
  }
}