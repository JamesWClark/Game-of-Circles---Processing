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
  background(255);
  player.animate(); // call a method, animate]

  // for each invader in the list, do
  for (Invader inv : invaders) {
    inv.animate();
  }
  
  for (Bullet b : bullets) {
    b.animate();
  }
  
  handleCollisions();
}

void handleCollisions() {
  for(int i = 0; i < bullets.size(); i++) {
    for(int j = 0; j < invaders.size(); j++) {
      Bullet bul = bullets.get(i);
      Invader inv = invaders.get(j);
      double d = Math.sqrt(Math.pow(bul.x - inv.x, 2) + Math.pow(bul.y - inv.y, 2));
      double r1 = bul.w / 2.0;
      double r2 = inv.w / 2.0;
      if(r1 + r2 > d) {
        bullets.remove(bul);
        invaders.remove(inv);
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
