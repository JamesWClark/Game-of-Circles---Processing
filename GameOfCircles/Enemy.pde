class Enemy {
  int x, y;
  int w = 40;
  int h = 40;
  
  Enemy(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  void move() {
    
  }
  
  void display() {
    ellipse(x, y, w, h);
  }
}
