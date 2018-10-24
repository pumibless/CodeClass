float[] pos = { 50, 100, 150, 200, 250, 300, 350, 250, 400, 450, 500, 550 };

void setup() {
  size(600, 600);
}

void draw() {
  background(240);
  for (int i = 0; i < pos.length; i++) {
    ellipse(width/2, pos[i], 50, 50);
  }
}
