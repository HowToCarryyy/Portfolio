int alter = 20;
float note = 3.7;
void setup(){
  if (alter >= 20 && alter <= 60 && note < 3.0){
    println("Einstellen!");
  } else {
    println("Lieber nicht!");
  }
}