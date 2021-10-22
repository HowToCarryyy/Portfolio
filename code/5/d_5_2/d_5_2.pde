int anzahl = 8;
String ASCII; 
void setup(){
  for (int i = 0; i <= anzahl-1; i++){
    if (i%2 == 0){
      print("#");
    } else{
      print(".");
    }
  }
}