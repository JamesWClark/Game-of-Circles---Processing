abstract class AbstractSprite {
  int x, y, w, h, team = 2; // default b/c player is team 1
  color c = color(255); // default white
  
  AbstractSprite(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  abstract void move();
  
  void display() {
    fill(c);
    ellipse(x, y, w, h);
  }
  
  void animate() {
    move();
    display();
  }
  
  void handleCollision() {
    _SM.destroy(this);
  }
}
