class ArmoredTurret extends AbstractSprite {
  
  int armor = 10;
  long wait = 50;
  long mark = 0;
  int step = 1;
  int numSteps = 100;
  
  ArmoredTurret(int x, int y) {
    super(x, y, 80, 80);
    this.x = x;
    this.y = y;
    c = color(255, 0, 0);
  }
  
  void move() {
    if(millis() - mark > wait) {
      step = step < numSteps ? step + 1 : 1;
      
      switch(step) {
        case 5:  _SM.spawn(new Bullet(x, y, new PVector(0, 8), team)); break;
        case 10: _SM.spawn(new Bullet(x, y, new PVector(1, 7), team)); break;
        case 15: _SM.spawn(new Bullet(x, y, new PVector(-2, 6), team)); break;
        case 30: _SM.spawn(new Bullet(x, y, new PVector(2, 6), team)); break;
        case 35: _SM.spawn(new Bullet(x, y, new PVector(2, 6), team)); break;
        case 40: _SM.spawn(new Bullet(x, y, new PVector(3, 5), team)); break;
        case 45: _SM.spawn(new Bullet(x, y, new PVector(4, 4), team)); break;
        case 75: _SM.spawn(new Bullet(x, y, new PVector(3, 7), team)); break;
        case 80: _SM.spawn(new Bullet(x, y, new PVector(4, 8), team)); break;
        case 85: _SM.spawn(new Bullet(x, y, new PVector(5, 5), team)); break;
        case 90: _SM.spawn(new Bullet(x, y, new PVector(6, 3), team)); break;
      }
    }
  }
  
  void display() {
    stroke(0);
    strokeWeight(armor);
    fill(c);
    ellipse(x, y, w, h);
    noStroke();
  }
  
  void handleCollision() {
    if(armor > 0) {
      armor--;
    } else {
      _SM.destroy(this);
    }
  }
}
