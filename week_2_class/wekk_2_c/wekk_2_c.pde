//boolean to detect if mouse is pressed
//if boolean true, draw an ellipse where mouseX + mouseY
//change the size of my drawing ellipse when arrows clicked

int size;
int x, y;
color circleColor;

void setup() {
  size(500, 500);
  size = 10;
  noStroke();
  cicleColor
}

void draw() {
  //255 opaque, 0 transparent
  fill(0, 1);
  rect(0, 0, width, height); 
  x = mouseX;
  y = mouseY;
  
  //happens in one quadrant
  if(mouseX>0 && mouseX<width/2 && mouseY>0 && mouseY<width/2){ 
  //happens continuously
    if(mousePressed){
    fill(circleColor);
    ellipse(x, y, size, size);
    }
  }
  }
//to "press" circle to appear on canvase where your mouse is
//void MousePRessed(){
//  ellispe(x, y, size, size);
//}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      size += 5;
      //size ++;
    }
    if(keyCode == DOWN){
      size --;
    }
  }
}
