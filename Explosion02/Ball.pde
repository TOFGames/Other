class Ball {
  PVector pos=new PVector();
  PVector spd=new PVector();
  float size;

  Ball(PVector pos, float size) {
    this.pos=pos;
    this.size=size;

    spd=new PVector(random(8, 16), random(8, 16));
  }

  void run() {
    rogic();
    display();
  }

  void display() {
    fill(0, 0, 100);
    noStroke();
    circle(pos.x, pos.y, size);
  }

  void rogic() {
    pos.add(spd);

    if (pos.x-size/2<0) {
      pos.x=size/2;
      spd.x*=(-1);
      explosion.add(new Explosion(new PVector(pos.x, pos.y)));
      se.trigger();
    }

    if (pos.x+size/2>width) {
      pos.x=width-size/2;
      spd.x*=(-1);
      explosion.add(new Explosion(new PVector(pos.x, pos.y)));
      se.trigger();
    }

    if (pos.y-size/2<0) {
      pos.y=size/2;
      spd.y*=(-1);
      explosion.add(new Explosion(new PVector(pos.x, pos.y)));
      se.trigger();
    }

    if (pos.y+size/2>height) {
      pos.y=height-size/2;
      spd.y*=(-1);
      explosion.add(new Explosion(new PVector(pos.x, pos.y)));
      se.trigger();
    }
  }
}
