PImage img;
void setup() {
  size(1920, 1080);
  img = loadImage("/home/macbook-ubuntu/Dokumente/Schule/Informatik/Java_Processing/Private_Projekte/Uhr/time.jpg");
}
void draw() {
  background(70, 70, 70);
  image(img, 480, 100);
  save("wallpaper.jpg");
  delay(6000);
}
