void setup() {
  size(500, 500);
}
//pressing key for color change
//void draw() {
//  if (keyPressed == true) {
//    fill(0);
//  } else {
//    fill(255);
//  }
//  rect(25, 25, 50, 50);
//}

//toggling color
int value = 0;

void draw() {
  fill(value);
  rect(25, 25, 50, 50);
}

void keyPressed() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
    
