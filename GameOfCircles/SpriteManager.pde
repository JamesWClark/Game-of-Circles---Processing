class SpriteManager {
  Player player;
  
  ArrayList<AbstractSprite> sprites = new ArrayList<AbstractSprite>();
  ArrayList<AbstractSprite> destroyed = new ArrayList<AbstractSprite>();
  
  SpriteManager() {
    player = new Player(width / 2, height - 100);
    spawn(player);
  }
  
  void destroy(AbstractSprite target) {
    destroyed.add(target);
  }
  
  void spawn(AbstractSprite obj) {
    sprites.add(obj);
  }
  
  void animate() {
    for(int i = sprites.size() - 1; i >= 0; i--) {      
      sprites.get(i).animate();
    }
    checkCollisions();
    bringOutTheDead();
  }
  
  void checkCollisions() {
    for(int i = 0; i < sprites.size(); i++) {
      for(int j = 0; j < sprites.size(); j++) {
        AbstractSprite a = sprites.get(i);
        AbstractSprite b = sprites.get(j);
        if(a.team != b.team && a.isColliding(b)) {
          sprites.get(i).handleCollision();
          sprites.get(j).handleCollision();
        }
      }
    }
  }
  
  void bringOutTheDead() {
    for(int i = destroyed.size() - 1; i >= 0; i--) {
      AbstractSprite target = destroyed.get(i);
      sprites.remove(target);
      destroyed.remove(target);
    }
  }
  
  Player getPlayer() {
    return player;
  }
}