abstract class AbstractSprite implements Sprite {
  int x, y, w, h;
  
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
}
