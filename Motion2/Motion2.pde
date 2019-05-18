ArrayList<Ball> ball=new ArrayList<Ball>();
boolean mousePressFlag;

void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  if (mousePressed&&(!mousePressFlag)) {
    mousePressFlag=true;
    ball.add(new Ball(mouseX, mouseY));
  }

  background(0, 0, 100);
  for (int i=0; i<ball.size(); i++) {
    ball.get(i).run();
  }
}

void mouseReleased() {
  mousePressFlag=false;
}

class Ball {
  int scene;

  float x;
  float y;
  float s;
  float edgeSize=5;

  float alpha=100;

  float[] lineLength=new float[2];

  Ball(float x, float y) {
    this.x=x;
    this.y=y;
    lineLength[0]=0;
    lineLength[1]=200;
  }

  void run() {
    rogic();
    display();
  }

  void display() {
    strokeWeight(edgeSize);

    if (scene==0) {
      stroke(0, 0, 0, alpha);
      line(x+lineLength[0], y+lineLength[0], x+lineLength[1], y+lineLength[1]);
      line(x+lineLength[0], y+lineLength[0]*(-1), x+lineLength[1], y+lineLength[1]*(-1));
      line(x+lineLength[0]*(-1), y+lineLength[0], x+lineLength[1]*(-1), y+lineLength[1]);
      line(x+lineLength[0]*(-1), y+lineLength[0]*(-1), x+lineLength[1]*(-1), y+lineLength[1]*(-1));
    }

    fill(0, 0, 0, alpha);
    stroke(0, 0, 100, alpha);
    circle(x, y, lineLength[0]);

    noFill();
    stroke(0, 0, 0, alpha);
    circle(x, y, lineLength[0]*8);
  }

  void rogic() {
    lineLength[0]+=10;
    if (lineLength[0]>lineLength[1]) {
      scene=1;
    }

    if (scene==1) {
      alpha-=10;
    }
  }
}
