class Bullet {
  int x, y;
  int w = 10, h = 10;
  PVector velocity;
  
  Bullet(int x, int y, PVector velocity) {
    this.x = x;
    this.y = y;
    this.velocity = velocity;
  }
  
  void move() {
    x += velocity.x;
    y += velocity.y;
  }
  
  void display() {
    ellipse(x, y, w, h);
  }
  
  void animate() {
    move();
    display();
  }
}
