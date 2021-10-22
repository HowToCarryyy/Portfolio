float note = 1.0;
int erfahrung = 4;
void setup(){
  if (note <= 1.0 || (erfahrung == 5 && note <= 3.0)){
    print("Einstellen!");
  } else if(note <= 2 || erfahrung == 4){
    print("Einladen!");
  } else{
    print("Ablehnen!");
  }
}