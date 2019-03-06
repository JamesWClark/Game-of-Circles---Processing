abstract class AbstractSprite {
  int x, y, team = 2; // default team is 2 (most are enemies)
  int diameter = 50; // default of 50 just in case?
  color c = color(255); // default white color, just in case we forget

  // constructor
  AbstractSprite(int x, int y, int team) {
    this.x = x;
    this.y = y;
    this.team = team;
  }
  
  // methods
  void display() {
    fill(c);
    ellipse(x, y, diameter, diameter);
  }
  
  void animate() {
    move();
    display();
  }
  
  abstract void move();
}
