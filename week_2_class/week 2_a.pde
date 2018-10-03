int value = 0;

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  
  pushMatrix();
  background(225);
  fill(255);
  translate(width*.75, height*.75);
  rotate(radians(mouseX));
  rect(0, 0, 100, 100);
  popMatrix();
 
  pushMatrix();
  scale(2.0);
  fill(255, 0 , 0);
  translate(width*.25, height*.25);
  rotate(radians(mouseY));
  rotate(radians(45));
  rect(0, 0, 100, 100);
  fill(0);
  ellipse(0, 0, 50, 50);
  popMatrix();
}
