int Note = 45;
void draw(){
  if (Note < 10){
    println("Durchgefallen!");
  } else if(Note > 11 && Note < 20){
    println("Naja!");
  }else if(Note > 21 && Note < 30){
    println("Mittelgut!");
  }else if(Note > 31 && Note < 40){
    println("Gut!");
  }else if(Note > 41 && Note < 50){
    println("Super!");
  }
}