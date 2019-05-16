Wave wave;

void setup() {
  size(1000, 1000);
  wave=new Wave(height/10,500, 2);
}

void draw() {
  background(255);
  wave.run();
}

class Wave {
  float _height; //波の高さ
  float interval; //波の間隔
  float x; //x軸方向の進行
  float resolution; //波の解像度(vertexの間隔)

  Wave(float _height,float interval, float resolution) {
    this._height=_height;
    this.interval=interval;
    this.resolution=resolution;
  }

  void run() {
    rogic();
    display();
  }
  
  void rogic() {
    x+=0.1;
  }

  void display() {
    fill(2, 111, 224);
    strokeWeight(3);

    beginShape();
    vertex(-100, height/2);
    for (int i=0; i<width*resolution; i++) {
      vertex(i/resolution, sin(i/interval+x)*_height+height/2);
    }
    vertex(width+100,height/2);
    vertex(width+100, height);
    vertex(-100, height);
    endShape(CLOSE);
  }  
}
