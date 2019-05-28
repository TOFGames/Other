class Bar {
  PVector pos=new PVector();
  PVector size=new PVector();

  Bar(PVector pos, PVector size) {
    this.pos=pos;
    this.size=size;
  }

  void run() {
    rogic();
    display();
  }

  void rogic() {
  }

  void display() {
    noFill();
    stroke(0,0,100);
    rect(pos.x, pos.y, size.x, size.y);
  }
  
  void applyHitBall(int reflectState,Ball ball){ 
    
  }
  
  //int check
}
