Bullet b1;
Invader inv1;
Ship player;

void setup() {
  size(1024, 768);
  b1 = new Bullet(600, 600, new PVector(0, -5));
  inv1 = new Invader(150, 50);
  player = new Ship(400, 400);
}

void draw() {
  background(255);
  b1.animate();
  inv1.animate();
  player.animate();
}

void keyPressed() {
  player.keyDown();
}

void keyReleased() {
  player.keyUp();
}
