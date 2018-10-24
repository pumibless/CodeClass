float x = 100; 
float y =  0;

void setup() {
  size(600, 600);
  background(230);
  rectMode(CENTER);
}

void draw() {
  pushMatrix();
  translate(0, 100);
  rotate(radians(frameCount + x));
  stroke(0, 130);
  line(-50, 0, 50, 0);
  
  popMatrix();
  
  y+=5;
  
  if (x > width + 100) {
    y = 0;
    x += 100;
  }
}
