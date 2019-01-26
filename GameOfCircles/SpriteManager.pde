class SpriteManager {
  ArrayList<AbstractSprite> sprites = new ArrayList<AbstractSprite>();
  Player player;
  
  SpriteManager() {
    player = new Player(width / 2, height - 100);
    spawn(player);
  }
  
  void destroy(AbstractSprite target) {
    sprites.remove(target);
  }
  
  void spawn(AbstractSprite obj) {
    sprites.add(obj);
  }
  
  void animate() {
    for(int i = sprites.size() - 1; i >= 0; i--) {      
      sprites.get(i).animate();
    }
    checkCollisions();
  }
  
  void checkCollisions() {
    for(int i = sprites.size() - 1; i >= 0; i--) {      
      for(int j = i; j >= 0; j--) {
          AbstractSprite a = sprites.get(i);
          AbstractSprite b = sprites.get(j);
          if(a.isColliding(b) && a.team != b.team) {
            println("COLL");
            sprites.get(i).handleCollision();
            sprites.get(j).handleCollision();
          }
      }
    }
  }
  
  Player getPlayer() {
    return player;
  }
}