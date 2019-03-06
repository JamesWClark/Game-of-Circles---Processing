abstract class AbstractSprite implements Sprite {
  int x, y, w, h, team = 2; // default b/c player is team 1
  
  AbstractSprite(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void display() {
    ellipse(x, y, w, h);
  }
  
  void animate() {
    move();
    display();
  }
  
  boolean isColliding(AbstractSprite other) {
    // assumes equal w and h
    int r1 = w / 2;
    int r2 = other.w / 2;
    return r1 + r2 > dist(x, y, other.x, other.y);
  }
  
  void handleCollision() {
    _SM.destroy(this);
  }
}