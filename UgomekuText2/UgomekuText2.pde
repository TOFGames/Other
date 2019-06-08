PFont font;
PImage image;
float rad;
float x, y;

void setup() {
  size(900, 900, P3D);

  font=createFont("MISHIMISHI-BLOCK.otf", 80);
  image=loadImage("photo0000-2287.jpg");
  textFont(font, 80);

  textAlign(CENTER, CENTER);

  colorMode(HSB, 360, 100, 100, 100);
  imageMode(CENTER);
}

void draw() {
  x+=random(-4, 4);
  y+=random(-4, 4);
  rad+=20;

  background(0, 0, 100);

  pushMatrix();
  translate(width/2, height/2, -400);
  image(image, 0, 0);
  popMatrix();

  translate(width/2+x-60, height/4+y);
  rotateX(radians(-20));
  rotateY(radians(-30));


  fill(0, 0, 100, 90);
  text("ニャホニャホタマクロー", 0, 0);
  
  x=0;
  y=0;

  filter(BLUR, abs(sin(radians(rad)))*2);
}
