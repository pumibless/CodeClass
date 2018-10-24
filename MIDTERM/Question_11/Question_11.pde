int incr;

void setup() {
  size(600, 600);
  incr = 5;
}

void draw() {
  int yPosition = width/2 + incr;
  ellipse(width/2, yPosition, 100, 100);

  if (yPosition >= height +incr) {
    yPosition = 0;
  } else {
    yPosition += 10;
  }
}
