int colour = 0;
int buffer = 0;
void draw(){
  background(255);
  if(buffer == 0){
    colour++;
  } else if(buffer == 1){
    colour--;
  }
  if (colour == width){
    buffer = 1;
  } else if(colour == 20){
    buffer = 0;
  }
  fill(colour*2);
  stroke(colour*2);
  ellipse(50,50,90,90);
}