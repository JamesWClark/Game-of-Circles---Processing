class RaindropShooter extends Raindrop {
  
  RaindropShooter(int x, int y) {
    super(x, y);
  }
  
  void move() {
    super.move();
    PVector vector = aim(_SM.getPlayer());
    fire(vector);
  }
  
  PVector aim(AbstractSprite target) {
    float distance = dist(target.x, target.y, this.x, this.y);
    float xComponent = target.x - this.x;
    float yComponent = target.y - this.y;
    float f = 7;
    if(distance == 0) {
      distance = 0.01;
    }
    return new PVector(xComponent / distance * f, yComponent / distance * f);
  }
  
  void fire(PVector vector) {
    _SM.spawn(new Bullet(this.x, this.y, this.team, vector));
  }
}
