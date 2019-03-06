class Raindrop extends AbstractSprite {
  int speed = 4;
  color c = color(0,0,255);
  
  Raindrop(int x, int y) {
    super(x, y, 50, 50);
  }
  
  void move() {
    y += speed;
    if(y > height) {
      y = int(random(-200, -50));
      x = int(random(width));
    }
  }
}
