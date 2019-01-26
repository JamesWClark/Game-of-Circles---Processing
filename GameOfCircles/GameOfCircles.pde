Ship player;

void setup() {
  size(1024, 768);
  player = new Ship(50, 50);
}

void draw() {
  background(255);
  player.animate();
}

void keyPressed() {
  player.keyDown();
}

void keyReleased() {
  player.keyUp();
}
