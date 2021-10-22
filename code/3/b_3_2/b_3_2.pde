int zustand = 0;

void setup() {
  textAlign(CENTER);
  textSize(20);
}

void draw() {
  background(0);
  if (zustand == 0) {
    text("Hallo", width/2, height/2);
  } else if (zustand == 1){
    text("mein", width/2, height/2);
  }else if (zustand == 2){
    text("Name", width/2, height/2);
  }else if (zustand == 3){
    text("ist", width/2, height/2);
  }else if (zustand == 4){
    text("Hase", width/2, height/2);
  }else if (zustand == 5){
    text("Ciao", width/2, height/2);
  }
}
void mouseClicked(){
  zustand++;
  if (zustand > 5){
    zustand = 0;
  }
}