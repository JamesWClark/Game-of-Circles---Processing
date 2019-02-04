class Invader {
  int x, y, team;
  int w = 40;
  int h = 40;
  int xspeed = 5;
  int yspeed = 0;

  // constructor
  Invader(int x, int y, int team) {
    this.x = x;
    this.y = y;
    this.team = team;
  }

  void move() {
    x += xspeed;
    y += yspeed;
    
    if(x < 0 || x > width) {
      xspeed *= -1;
    }
    if(y < 0 || y > height) {
      yspeed *= -1;
    }
  }

  void display() {
    ellipse(x, y, w, h);
  }
  
  void animate() {
    move();
    display();
  }
}
