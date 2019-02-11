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
}

void keyPressed() {
  player.keyDown(); // key goes down
}

void keyReleased() {
  player.keyUp(); // key comes up
}
