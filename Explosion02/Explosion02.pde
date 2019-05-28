ArrayList<Explosion> explosion=new ArrayList<Explosion>();
Ball ball;

void setup() {
  size(900, 900);
  colorMode(HSB, 360, 100, 100, 100);
  rectMode(CENTER);
  
  setMusicSettings();
  ball=new Ball(new PVector(width/2,height/2),30);
}

void draw() {
  background(0, 0, 0);
  
  ball.run();

  if (mousePressed&&explosion.size()==0) {
    explosion.add(new Explosion(new PVector(mouseX, mouseY)));
    se.trigger();
  }

  for (int i=explosion.size()-1; i>=0; i--) {
    explosion.get(i).run();
    if (explosion.get(i).removeFlag) {
      explosion.remove(i);
    }
  }
}
