SpriteManager _SM;

void setup() {
  size(1024, 768);
  _SM = new SpriteManager();
  _SM.spawn(new Invader(250, 50));
  _SM.spawn(new ArmoredSprite(500, 500));
}

void draw() {
<<<<<<< HEAD
  background(204);
  _SM.manage();
}

void keyPressed() {
  _SM.player.keyDown();
}

void keyReleased() {
  _SM.player.keyUp();
}
