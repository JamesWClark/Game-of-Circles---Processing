class ArmoredSprite extends AbstractSprite {
  
  int armor = 10;
  
  // overloaded constructor
  ArmoredSprite(int x, int y) {
    super(x, y, 80, 80);
  }
  
  // required abstract method
  void move() {
  
  }
  
  @Override
  void display() {
    stroke(50);
    strokeWeight(armor);
    fill(c);
    ellipse(x, y, w, h);
    noStroke();
  }
  
  @Override
  void handleCollision() {
    if(armor > 0) {
      armor--;
    } else {
      _SM.destroy(this);
    }
  }
}
