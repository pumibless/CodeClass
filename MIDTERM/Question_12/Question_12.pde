void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(150);
  for (int i = 0; i <10; i++) {
    int x = 15;
    rect(x*i, 150, 10, 300);
    x += 60;
  }
}
