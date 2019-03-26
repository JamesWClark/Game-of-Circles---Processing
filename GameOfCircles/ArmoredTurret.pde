class ArmoredTurret extends ArmoredSprite {
  int step = 0;
  int numSteps = 100;
  long mark = 0;
  long wait = 50;
  PVector direction;
  
  ArmoredTurret(int x, int y, PVector direction) {
    super(x, y);
    this.direction = direction;
  }
  
  void move() {
    shoot();
  }
  
  void shoot() {
    if(millis() - mark > wait) {
      
      // move the marker forward in time
      mark = millis();
      
      // increase the step once every wait interval
      step = step < numSteps ? step + 1 : 0;
      
      // fire once at the following step numbers
      PVector newDir;
      switch(step) {
        case 5:
          // one way is to manually offset some x and y from the original direction
          newDir = new PVector(direction.x - 2, direction.y - 2);
          _SM.spawn(new Bullet(x, y, newDir, team));
          break;
        case 10: 
          // another way is to include some randomness
          newDir = new PVector(direction.x + random(-3, 3), direction.y + random(-3, 3));
          _SM.spawn(new Bullet(x, y, newDir, team));
          break;
        case 15: 
          // personally i like the randomization
          newDir = new PVector(direction.x + random(-3, 3), direction.y + random(-3, 3));
          _SM.spawn(new Bullet(x, y, newDir, team));
          break;
        case 20:
          // but maybe a mix of the two is best
          newDir = new PVector(direction.x + 2, direction.y + 2);
          _SM.spawn(new Bullet(x, y, newDir, team));
          break;
        case 25:
          newDir = new PVector(direction.x + random(-4, 4), direction.y + random(-4, 4));
          _SM.spawn(new Bullet(x, y, newDir, team));
          break;
      }
    }
  }
}
