// variables
ArrayList<Invader> invaders = new ArrayList();
ArrayList<Bullet> bullets = new ArrayList();

Ship player; // declare

int playerTeam = 1;
int enemyTeam = 2;

void setup() {
  size(1024, 768);
  player = new Ship(400, 400, playerTeam); // instantiate

  invaders.add(new Invader(150, 50, enemyTeam));  
  invaders.add(new Invader(250, 50, enemyTeam));  
  invaders.add(new Invader(350, 50, enemyTeam));  
  invaders.add(new Invader(450, 50, enemyTeam));
}

void draw() {
  background(0);
  player.animate(); // call a method, animate]

  for (Invader inv : invaders) { // these are foreach loops
    inv.animate();
  }
  for (Bullet b : bullets) {
    b.animate();
  }

  checkCollisions();
}

void checkCollisions() {
  // stand c-style loops
  for (int i = 0; i < bullets.size(); i++) {
    for (int j = 0; j < invaders.size(); j++) {
      // as long as both lists have something
      if (bullets.size() > 0 && invaders.size() > 0) {
        // get the objects
        Bullet bul = bullets.get(i);
        Invader inv = invaders.get(j);
        // get the distance between two objects
        double d = Math.sqrt(Math.pow(inv.x - bul.x, 2) + Math.pow(inv.y - bul.y, 2));
        double r1 = bul.diameter / 2.0; // avoids integer truncation, (bc not divide by int)
        double r2 = inv.diameter / 2.0; // also avoid integers trunction
        if (r1 + r2 > d) { // a collision has occurred
          bullets.remove(bul);
          invaders.remove(inv);
        }
      }
    }
  }
}

void keyPressed() {
  player.keyDown(); // key goes down
}

void keyReleased() {
  player.keyUp(); // key comes up
}
