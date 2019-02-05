class Bullet {
  int x, y, team;
  int w = 10, h = 10;
  PVector velocity;
  
  Bullet(int x, int y, PVector velocity, int team) {
    this.x = x;
    this.y = y;
    this.velocity = velocity;
    this.team = team;
  }
  
  void move() {
    x += velocity.x;
    y += velocity.y;
  }
  
  void display() {
    fill(255);
    ellipse(x, y, w, h);
  }
  
  void animate() {
    move();
    display();
  }
}
