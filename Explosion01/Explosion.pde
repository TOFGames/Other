class Explosion {
  ArrayList<ExRect> exRects=new ArrayList<ExRect>();
  int exRectNum=100;
  int time=0;
  boolean removeFlag;

  PVector pos=new PVector();

  Explosion(PVector pos) {
    for (int i=0; i<exRectNum; i++) {
      exRects.add(new ExRect(new PVector(pos.x, pos.y), new PVector(random(-10, 10), random(-10, 0)), random(1, 100), random(0.01, 0.1)));
    }

    this.pos=pos;
  }

  void run() {
    for (int i=exRects.size()-1; i>=0; i--) {
      exRects.get(i).run();
    }

    rogic();
    display();
  }

  void display() {
    if (time%100<=50&&time<=300) {
      background(0, 0, 100);
    }

    noFill();
    stroke(0, 0, 100);
    
    circle(pos.x, pos.y, time*2);
    circle(pos.x, pos.y, time*4);
    circle(pos.x, pos.y, time*8);
  }

  void rogic() {
    time+=30;
    if (time>=3000) {
      removeFlag=true;
    }
  }
}
