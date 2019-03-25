class Player extends AbstractSprite {
  int xspeed = 5;
  int yspeed = 2;
  boolean left, right, up, down;

  Player(int x, int y) {
    super(x, y, 40, 40);
    team = 1;
  }

  void move() {
    if (left)  x -= xspeed;
    if (right) x += xspeed;
    if (up)    y -= yspeed;
    if (down)  y += 3 * yspeed;

    x = constrain(x, 0, width); // limits the value
    y = constrain(y, 0, height);
  }

  void fire() {
    _SM.spawn(new Bullet(x, y, new PVector(0, -10), team));
  }

  void keyDown() {
    switch(key) {
    case 'f':
    case 'F':
    case ' ':
      fire();
      break;
    }
    switch(keyCode) {
    case LEFT:
      left = true;
      break;
    case RIGHT:
      right = true;
      break;
    case UP:
      up = true;
      break;
    case DOWN:
      down = true;
      break;
    }
  }

  void keyUp() {
    switch(keyCode) {
    case LEFT:
      left = false;
      break;
    case RIGHT:
      right = false;
      break;
    case UP:
      up = false;
      break;
    case DOWN:
      down = false;
      break;
    }
  }
}