class Bullet extends AbstractSprite {
  PVector velocity;
  
  Bullet(int x, int y, PVector velocity, int team) {
    super(x, y, 10, 10);
    this.velocity = velocity;
    this.team = team;
  }
  
  void move() {
    x += velocity.x;
    y += velocity.y;
  }
}
