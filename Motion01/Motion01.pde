int scene;
float sx, sy;
float tx, ty, ts;

void setup() {
  scene=-1;
  sx=0;
  sy=height*1/5;

  tx=width/2;
  ty=height;
  ts=100;
  
  size(500, 500);
  colorMode(HSB, 360, 100, 100, 100);
  textAlign(CENTER, CENTER);
  textSize(ts);
}

void draw() {
  background(0, 0, 100);

  noStroke();
  fill(0, 50, 100);
  rect(0, height/2-sy/2, sx, sy);

  fill(0, 0, 100);
  text("MOTION", tx, ty);


  if (mousePressed) {
    scene=0;
  }

  switch(scene) {
  case 0:
    sx+=20;
    if (sx>=width) {
      scene++;
    }
    break;

  case 1:
    ty-=10;
    if (ty<=height/2+(sy-ts)/2) {
      ty=height/2+(sy-ts)/2;
      scene=2;
    }
    break;
  }
}
