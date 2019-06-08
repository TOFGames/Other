PFont font;
float rad;
float x,y;

void setup() {
  size(700, 700);

  font=createFont("MISHIMISHI-BLOCK.otf", 200);
  textFont(font, 200);

  textAlign(CENTER, CENTER);

  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  x+=random(-4,4);
  y+=random(-4,4);
  rad+=10;
  
  background(0, 0, 100);
  fill(0, 0, 0);
  text("テスト", width/2+x,height/2+y);
  filter(BLUR,abs(sin(radians(rad)))*6); 
  
  x=0;
  y=0;
}
