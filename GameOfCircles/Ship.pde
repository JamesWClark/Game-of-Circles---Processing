class Ship {
  // variables
  int x, y, team;
  int w = 40;
  int h = 40;
  int xspeed = 5;
  int yspeed = 2;
  boolean left, right, up, down;

  // constructors
  Ship(int x, int y, int team) {
    this.x = x;
    this.y = y;
    this.team = team;
  }

  // functions
  void animate() {
    move();
    display();
  }

  void move() {
    if (left)  x -= xspeed;
    if (right) x += xspeed;
    if (up)    y -= yspeed;
    if (down)  y += yspeed;

    x = constrain(x, 0, width); // limits the value
    y = constrain(y, 0, height);
  }

  void display() {
    ellipse(x, y, w, h);
  }

  void fire() {
    bullets.add(new Bullet(x, y, new PVector(0, -10), team));
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
