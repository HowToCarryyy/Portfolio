/* @pjs preload="player.png","car_right.png","Road.png","trophy.png"; */
int highscore;
PImage trophy_img;
int trophy;
PFont font;
int death;
int x;
int y;
PImage bg;
PImage player;
PImage CarRightBottom;
PImage CarRightBottom2;
PImage CarRightBottom3;
int CarRightBottomx;
int CarRightBottomx2;
int CarRightBottomx3;
PImage CarLeftBottom;
PImage CarLeftBottom2;
PImage CarLeftBottom3;
int CarLeftBottomx;
int CarLeftBottomx2;
int CarLeftBottomx3;
PImage CarRightTop;
PImage CarRightTop2;
PImage CarRightTop3;
int CarRightTopx;
int CarRightTopx2;
int CarRightTopx3;
PImage CarLeftTop;
PImage CarLeftTop2;
PImage CarLeftTop3;
int CarLeftTopx;
int CarLeftTopx2;
int CarLeftTopx3;
void setup(){
  highscore = 1000;
  trophy_img = loadImage("trophy.png");
  trophy = 0;
  death = 0;
  x = 500;
  y = 920;
  size(1000,1000);
  noStroke();
  bg = loadImage("Road.png");
  
  player = loadImage("player.png");
  image(player, x, y);
  CarRightBottom = loadImage("car_right.png");
  CarRightBottom2 = loadImage("car_right.png");
  CarRightBottom3 = loadImage("car_right.png");
  CarRightBottomx = -200;
  CarRightBottomx2 = -700;
  CarRightBottomx3 = -1050;
  CarLeftBottom = loadImage("car_left.png");
  CarLeftBottom2 = loadImage("car_left.png");
  CarLeftBottom3 = loadImage("car_left.png");
  CarLeftBottomx = 1000;
  CarLeftBottomx2 = 1500;
  CarLeftBottomx3 = 1850;
  CarRightTop = loadImage("car_right.png");
  CarRightTop2 = loadImage("car_right.png");
  CarRightTop3 = loadImage("car_right.png");
  CarRightTopx = -200;
  CarRightTopx2 = -700;
  CarRightTopx3 = -1050;
  CarLeftTop = loadImage("car_left.png");
  CarLeftTop2 = loadImage("car_left.png");
  CarLeftTop3 = loadImage("car_left.png");
  CarLeftTopx = 1000;
  CarLeftTopx2 = 1500;
  CarLeftTopx3 = 1850;
  font = createFont("Comfortaa", 16, true);
}
void draw(){
  background(bg);
  rect(x, y, 34, 50);
  fill(256,0,0, 0);
  //x = mouseX;
  //y = mouseY;
  image(player, x, y);
  // Steuerung
  if (keyPressed == true){
    if(x < 0){
      x = 0;
      image(player, x, y);
    }
    if(x >= width-34){
      x = width-34;
      image(player, x, y);
    }
    if (y < 0){
      y = 0;
      image(player, x, y);
    }
    if (y >= height-50){
      y = height-51;
      image(player, x, y);
    } else if (keyCode == UP){
      y -= 2;
    }
    else if(keyCode == DOWN){
      y += 2;
    }
    else if(keyCode == LEFT){
      x -= 2;
    }
    else if(keyCode == RIGHT){
      x += 2;
    }
  }
  // car right bottom
    if (CarRightBottomx <= width){
    CarRightBottomx += 2;
    rect(CarRightBottomx, 625, 202, 100);
    image(CarRightBottom, CarRightBottomx, 625);
    
  } else {
    CarRightBottomx = -202;
  }
  if (CarRightBottomx2 <= width){
    CarRightBottomx2 += 2;
    rect(CarRightBottomx2, 625, 202, 100);
    image(CarRightBottom2, CarRightBottomx2, 625);
  } else {
    CarRightBottomx2 = -202;
  }
  if (CarRightBottomx3 <= width){
    CarRightBottomx3 += 2;
    rect(CarRightBottomx3, 625, 202, 100);
    image(CarRightBottom3, CarRightBottomx3, 625);
  } else {
    CarRightBottomx3 = -202;
  }
  
  // car left bottom
  if (CarLeftBottomx >= -202){
    CarLeftBottomx -= 2;
    rect(CarLeftBottomx, 770, 202, 100);
    image(CarLeftBottom, CarLeftBottomx, 770);
    
  } else {
    CarLeftBottomx = 1000;
  }
  if (CarLeftBottomx2 >= -202){
    CarLeftBottomx2 -= 2;
    rect(CarLeftBottomx2, 770, 202, 100);
    image(CarLeftBottom2, CarLeftBottomx2, 770);
  } else {
    CarLeftBottomx2 = 1000;
  }
  if (CarLeftBottomx3 >= -202){
    CarLeftBottomx3 -= 2;
    rect(CarLeftBottomx3, 770, 202, 100);
    image(CarLeftBottom3, CarLeftBottomx3, 770);
  } else {
    CarLeftBottomx3 = 1000;
  }
  // is touching right bottom
  if (x >= CarRightBottomx-34 && x <= CarRightBottomx+202 && y >= 625-50 && y <= 725){
    x = 500;
    y = 920;
    death += 1;
  }
  if (x >= CarRightBottomx2-34 && x <= CarRightBottomx2+202 && y >= 625-50 && y <= 725){
    x = 500;
    y = 920;
    death += 1;
  }
  if (x >= CarRightBottomx3-34 && x <= CarRightBottomx3+202 && y >= 625-50 && y <= 725){
    x = 500;
    y = 920;
    death += 1;
  }
  
  // is touching left bottom
  if (x >= CarLeftBottomx-34 && x <= CarLeftBottomx+202 && y >= 770-50 && y <= 870){
    x = 500;
    y = 920;
    death += 1;
  }
  if (x >= CarLeftBottomx2-34 && x <= CarLeftBottomx2+202 && y >= 770-50 && y <= 870){
    x = 500;
    y = 920;
    death += 1;
  }
  if (x >= CarLeftBottomx3-34 && x <= CarLeftBottomx3+202 && y >= 770-50 && y <= 870){
    x = 500;
    y = 920;
    death += 1;
  }
  // car right Top
    if (CarRightTopx <= width){
    CarRightTopx += 2;
    rect(CarRightTopx, 175, 202, 100);
    image(CarRightTop, CarRightTopx, 175);
    
  } else {
    CarRightTopx = -202;
  }
  if (CarRightTopx2 <= width){
    CarRightTopx2 += 2;
    rect(CarRightTopx2, 175, 202, 100);
    image(CarRightTop2, CarRightTopx2, 175);
  } else {
    CarRightTopx2 = -202;
  }
  if (CarRightTopx3 <= width){
    CarRightTopx3 += 2;
    rect(CarRightTopx3, 175, 202, 100);
    image(CarRightTop3, CarRightTopx3, 175);
  } else {
    CarRightTopx3 = -202;
  }
  
  // car left Top
  if (CarLeftTopx >= -202){
    CarLeftTopx -= 2;
    rect(CarLeftTopx, 315, 202, 100);
    image(CarLeftTop, CarLeftTopx, 315);
    
  } else {
    CarLeftTopx = 1000;
  }
  if (CarLeftTopx2 >= -202){
    CarLeftTopx2 -= 2;
    rect(CarLeftTopx2, 315, 202, 100);
    image(CarLeftTop2, CarLeftTopx2, 315);
  } else {
    CarLeftTopx2 = 1000;
  }
  if (CarLeftTopx3 >= -202){
    CarLeftTopx3 -= 2;
    rect(CarLeftTopx3, 315, 202, 100);
    image(CarLeftTop3, CarLeftTopx3, 315);
  } else {
    CarLeftTopx3 = 1000;
  }
  // is touching right Top
  if (x >= CarRightTopx-34 && x <= CarRightTopx+202 && y >= 175-50 && y <= 275){
    x = 500;
    y = 920;
    death += 1;
  }
  if (x >= CarRightTopx2-34 && x <= CarRightTopx2+202 && y >= 175-50 && y <= 275){
    x = 500;
    y = 920;
    death += 1;
  }
  if (x >= CarRightTopx3-34 && x <= CarRightTopx3+202 && y >= 175-50 && y <= 275){
    x = 500;
    y = 920;
    death += 1;
  }
  
  // is touching left Top
  if (x >= CarLeftTopx-34 && x <= CarLeftTopx+202 && y >= 315-50 && y <= 415){
    x = 500;
    y = 920;
    death += 1;
  }
  if (x >= CarLeftTopx2-34 && x <= CarLeftTopx2+202 && y >= 315-50 && y <= 415){
    x = 500;
    y = 920;
    death += 1;
  }
  if (x >= CarLeftTopx3-34 && x <= CarLeftTopx3+202 && y >= 315-50 && y <= 415){
    x = 500;
    y = 920;
    death += 1;
  }
  textFont(font);
  fill(0);
  textAlign(RIGHT);
  text("Deaths: "+death,width-5,20);
  if (highscore == 1000){
  } else {
  text("Highscore: "+highscore, width-5, 40);
  }
  if (y < 100){
    trophy += 1;
  }
  if (trophy != 0){
    image(trophy_img, 250, 250);
    if (highscore >= death){
      highscore = death;
    }
    if (keyCode == ENTER){
      trophy = 0;
      x = 500;
      y = 920;
      death = 0;
    }
  }
  fill(256,0,0, 0);
}