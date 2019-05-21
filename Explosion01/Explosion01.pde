ArrayList<Explosion> explosion=new ArrayList<Explosion>();

void setup() {
  size(700, 700);
  colorMode(HSB, 360, 100, 100, 100);
  rectMode(CENTER);
  
  setMusicSettings();
}

void draw() {
  background(0, 0, 0);

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
