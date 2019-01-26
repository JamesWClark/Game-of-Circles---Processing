class Player extends AbstractSprite {
  int speed = 5;

  boolean up = false;
  boolean down = false;
  boolean left = false;
  boolean right = false;

  Player(int x, int y) {
    super(x, y, 50, 50);
    team = 1; // as opposed to default enemy 2
  }

  void display() {
    ellipse(x, y, w, h);
  }

  void move() {
    if (up) y -= speed;
    if (down) y += speed;
    if (left) x -= speed;
    if (right) x += speed;
    
    x = constrain(x, 0+w/2, width-w/2);
    y = constrain(y, 0+h/2, height-h/2);
  }
  
  void fire() {
    _SM.spawn(new Bullet(x, y, team, new PVector(0, -10)));
  }
  
  void handleCollision() {
    // invincible! do nothing
  }

  void keyDown() {
    switch(key) {
      case 'f':
      case 'F':
      case ' ':
        fire(); // !
        break;
    }
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