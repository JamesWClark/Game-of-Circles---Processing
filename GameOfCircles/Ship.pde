class Ship extends AbstractSprite {
  int speed = 5;
  static int w = 50;
  static int h = 50;

  boolean up = false;
  boolean down = false;
  boolean left = false;
  boolean right = false;

  Ship(int x, int y) {
    super(x, y, w, h);
  }

  void display() {
    ellipse(x, y, w, h);
  }

  void move() {
    if (up) y -= speed;
    if (down) y += speed;
    if (left) x -= speed;
    if (right) x += speed;
  }

  void keyDown() {
    if (key == CODED) {
      switch(keyCode) {
      case UP: 
        up = true; 
        break;
      case DOWN: 
        down = true; 
        break;
      case LEFT: 
        left = true; 
        break;
      case RIGHT: 
        right = true; 
        break;
      }
    }
  }

  void keyUp() {
    if (key == CODED) {
      switch(keyCode) {
      case UP: 
        up = false; 
        break;
      case DOWN: 
        down = false; 
        break;
      case LEFT: 
        left = false; 
        break;
      case RIGHT: 
        right = false; 
        break;
      }
    }
  }
}
