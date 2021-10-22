int punkte = 10;
void draw(){
  if (punkte > 5 && punkte < 10){
    println("Bestanden");
  } else if(punkte <= 4){
    println("nicht Bestanden");
  } else if(punkte >= 10){
    println("Bestanden mit Auszeichnung");
  }
}