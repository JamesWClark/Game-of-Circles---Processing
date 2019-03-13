// GLOBAL
SpriteManager _SM;

void setup() {
  size(1024, 768);
  _SM = new SpriteManager();
  _SM.spawn(new ArmoredTurret(200, 200));
}

void draw() {
  background(204);
  _SM.animate();
}

void keyPressed() {
  _SM.getPlayer().keyDown();
}

void keyReleased() {
  _SM.getPlayer().keyUp();
}
