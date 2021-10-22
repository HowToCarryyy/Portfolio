int x = 0;
void setup(){
  frameRate(1);
}
void draw(){
  x++;
  if (x%2 == 0){
    println(""+x+" = Gerade");
  } else{
    println(""+x+" = Ungerade");
  }
}