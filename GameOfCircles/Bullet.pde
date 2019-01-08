class Bullet {
  int x, y;
  int w = 10;
  int h = 10;
  PVector v;
  
  Bullet(int x, int y, PVector velocity) {
    this.x = x;
    this.y = y;
    v = velocity;
  }
  
  void move() {
    x += v.x;
    y += v.y;
  }
  
  void display() {
    ellipse(x, y, w, h);
  }
}
