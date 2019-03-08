SpriteManager _SM;

void setup() {
  size(1024, 768);
  _SM = new SpriteManager();
  _SM.spawn(new Invader(50, 50));
}

void draw() {
  background(255);
  _SM.animate();
}

void keyPressed() {
  _SM.getPlayer().keyDown();
}

void keyReleased() {
  _SM.getPlayer().keyUp();
}
