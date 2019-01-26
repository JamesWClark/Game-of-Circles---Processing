Invader inv1;

void setup() {
  size(1024, 768);
  inv1 = new Invader(50, 50);
}

void draw() {
  background(255);
  inv1.animate();
}
