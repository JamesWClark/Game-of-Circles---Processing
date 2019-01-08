Ship player1;

void setup() {
  size(1024, 768);
  player1 = new Ship(width/2, height - 80);
}

void draw() {
  background(255);
  player1.move();
  player1.display();
}

void keyPressed() {
  player1.keyDown();
}

void keyReleased() {
  player1.keyUp();
}
