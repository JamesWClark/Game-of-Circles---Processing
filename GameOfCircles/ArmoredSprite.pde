class ArmoredSprite extends AbstractSprite {
  int armor = 10;

  ArmoredSprite(int x, int y) {
    super(x, y, 80, 80);
  }

  void move() {
  }

  @Override
  void display() {
    stroke(100);
    strokeWeight(armor);
    fill(255, 0, 0);
    ellipse(x, y, w, h);
    noStroke();
  }

  @Override
  void handleCollision() {
    armor -= 1;
    if (armor < 1) {
      _SM.destroy(this);
    }
  }
}
