int speed = 0;
int buffer = 0;
void draw(){
  background(0);
  if(buffer == 0){
    speed++;
  } else if(buffer == 1){
    speed--;
  }
  if (speed == width){
    buffer = 1;
  } else if(speed == 20){
    buffer = 0;
  }
  ellipse(50,50,speed,speed);
}
