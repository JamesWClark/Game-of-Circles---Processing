Ship player;

int playerTeam = 1, enemyTeam = 2;
ArrayList<Invader> invaders = new ArrayList();
ArrayList<Bullet> bullets = new ArrayList();


void setup() {
  size(1024, 768);
  player = new Ship(400, 400, playerTeam);

  invaders.add(new Invader(150, 50, enemyTeam));
  invaders.add(new Invader(250, 50, enemyTeam));
  invaders.add(new Invader(350, 50, enemyTeam));
  invaders.add(new Invader(450, 50, enemyTeam));
}

void draw() {
  background(255);
  player.animate();
  for(Invader i : invaders) {
    i.animate();
  }
  for(Bullet b : bullets) {
    b.animate();
  }
}

void keyPressed() {
  player.keyDown();
}

void keyReleased() {
  player.keyUp();
}
