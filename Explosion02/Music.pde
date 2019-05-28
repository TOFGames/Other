import ddf.minim.*;
Minim minim;
AudioSample se;

void setMusicSettings(){
  minim=new Minim(this);
  se=minim.loadSample("bomb1.mp3");
}
