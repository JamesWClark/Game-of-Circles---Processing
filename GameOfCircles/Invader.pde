class Invader extends AbstractSprite {
  int xspeed = 5;
  int yspeed = 0;
  long mark = 0;
  long wait = 1000;

  // constructor
  Invader(int x, int y) {
    super(x, y, 40, 40);
  }

  void move() {
    x += xspeed;
    y += yspeed;
    
    if(x < 0 || x > width) {
      xspeed *= -1;
    }
    if(y < 0 || y > height) {
      yspeed *= -1;
    }
    
    if(millis() - mark > wait) {
      _SM.spawn(new Bullet(x, y, new PVector(0, 10), team));
      mark = millis();
    }
  }
}
