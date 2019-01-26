class Bullet extends AbstractSprite {

  PVector v;
  
  Bullet(int x, int y, int team, PVector velocity) {
    super(x, y, 10, 10);
    this.team = team;
    v = velocity;
  }
  
  void move() {
    x += v.x;
    y += v.y;
    
    if(x < 0 - w/2 || x > width + w/2 || y < 0 || y > height + h/2) {
      _SM.destroy(this);
    }
  }
  
  void display() {
    ellipse(x, y, w, h);
  }
}