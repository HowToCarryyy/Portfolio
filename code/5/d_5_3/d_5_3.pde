void draw(){
  background(255);
  for (int i = 0; i <= 100;i += 10){
    line(0, i+(frameCount%10), 100, i+(frameCount%10));
  }
}