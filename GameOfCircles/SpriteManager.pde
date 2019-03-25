class SpriteManager {
  Player player;

  ArrayList<AbstractSprite> active = new ArrayList<AbstractSprite>();
  ArrayList<AbstractSprite> destroyed = new ArrayList<AbstractSprite>();

  SpriteManager() {
    player = new Player(width / 2, height - 100);
    spawn(player);
  }

  void destroy(AbstractSprite target) {
    destroyed.add(target);
  }

  void spawn(AbstractSprite obj) {
    active.add(obj);
  }

  void manage() {
    moveEverything();
    checkCollisions();    
    bringOutTheDead();
  }

  void moveEverything() {
    for (int i = 0; i < active.size(); i++) {
      active.get(i).animate();
    }
  }

  void checkCollisions() {
    for (int i = 0; i < active.size(); i++) {
      for (int j = i + 1; j < active.size(); j++) {
        AbstractSprite a = active.get(i);
        AbstractSprite b = active.get(j);
        if (a.team != b.team && collision(a, b)) {
          active.get(i).handleCollision();
          active.get(j).handleCollision();
        }
      }
    }
  }

  void bringOutTheDead() {
    for (int i = 0; i < destroyed.size(); i++) {
      AbstractSprite target = destroyed.get(i);
      active.remove(target);
      destroyed.remove(target);
    }
  }

  boolean collision(AbstractSprite a, AbstractSprite b) {
    // assumes equal w and h
    float r1 = a.w / 2.0;
    float r2 = b.w / 2.0;
    return r1 + r2 > dist(a.x, a.y, b.x, b.y);
  }
}
