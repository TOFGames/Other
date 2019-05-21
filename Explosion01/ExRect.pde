class ExRect {
  PVector pos=new PVector();
  PVector spd=new PVector();

  float size;
  float gravity=0.3;
  float rotateRad;
  float rotateSpd;

  float alpha=100;

  ExRect(PVector pos, PVector spd, float size, float rotateSpd) {
    this.pos=pos;
    this.spd=spd;
    this.size=size;
    this.rotateSpd=rotateSpd;
  }

  void run() {
    rogic();

    pushMatrix();
    setMatrix();
    display();
    popMatrix();
  }

  void display() {
    noFill();
    stroke(0, 0, 100, alpha);
    strokeWeight(5);
    rect(0, 0, size, size);
  }

  void rogic() {
    rotateRad+=rotateSpd;
    spd.y+=gravity;
    pos.add(spd);
    alpha--;
  }

  void setMatrix() {
    translate(pos.x, pos.y);
    rotate(rotateRad*PI);
  }
}
