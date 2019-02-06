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
  for (Invader i : invaders) {
    i.animate();
  }
  for (Bullet b : bullets) {
    b.animate();
  }
  checkCollisions();
}

void checkCollisions() {
  for (int i = 0; i < bullets.size(); i++) {
    for (int j = 0; j < invaders.size(); j++) {
      // a bullet or invader could be removed before loops finish; prevent that
      if (i < bullets.size() && j < invaders.size() && bullets.size() != 0 &&  invaders.size() != 0) {
        Bullet bul = bullets.get(i);
        Invader inv = invaders.get(j);
        double d = Math.sqrt(Math.pow(inv.x - bul.x, 2) + Math.pow(inv.y - bul.y, 2));
        double r1 = bul.w / 2.0;
        double r2 = inv.w / 2.0;
        if (r1 + r2 > d) {
          bullets.remove(bul);
          invaders.remove(inv);
        }
      }
    }
  }
}

void keyPressed() {
  player.keyDown();
}

void keyReleased() {
  player.keyUp();
}
