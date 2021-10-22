String la = "la";
int Anzahl = 1;
int y;
void setup() {
  println(la);
  frameRate(12);
}
void draw() {
  if (mousePressed){
    Anzahl++;
    for(int i = 0; i < Anzahl; i++){
      print(la + " ");
    }
    print("\n");
  }
}