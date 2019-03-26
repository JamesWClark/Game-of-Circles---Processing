class ArmoredTurret extends ArmoredSprite {
  int step = 0;
  int maxSteps = 100;
  long mark = 0;
  long wait = 50;
  PVector direction;

  ArmoredTurret(int x, int y, PVector direction) {
    super(x, y); // super is ArmoredSprite
    this.direction = direction;
  }

  void move() {
    shoot();
  }

  void shoot() {
    if (millis() - mark > wait) {
      mark = millis();
      step = step < maxSteps ? step + 1 : 0;

      PVector newDir;

      if (step == 1) {
        newDir = new PVector(direction.x - random(-2, 2), direction.y - random(-2, 2));
        _SM.spawn(new Bullet(x, y, newDir, team));
      } else if (step == 5) {
        newDir = new PVector(direction.x + random(-2, 2), direction.y - random(-2, 2));
        _SM.spawn(new Bullet(x, y, newDir, team));
      } else if (step == 15) {
        newDir = new PVector(direction.x - random(-2, 2), direction.y + random(-2, 2));
        _SM.spawn(new Bullet(x, y, newDir, team));
      }
    }
  }
}
