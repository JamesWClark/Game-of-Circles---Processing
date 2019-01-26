// GLOBAL
SpriteManager _SM;

void setup() {
  size(1024, 768);
  _SM = new SpriteManager();
  
  for(int i = 0; i < 5; i++) {
    _SM.spawn(new Invader(i*20, 50));
  }
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