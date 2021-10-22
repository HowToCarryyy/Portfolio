int start = 270;
int stop = 270;
void draw(){
  background(0);
  fill(255);
  ellipse(50,50,70,70);
  stop += 3;
  fill(0);
  arc(50,50,width/2,height/2,radians(start),radians(stop));
  if (stop > 630){
    stop = 270;
  }
}