float d = 100;
float incr = 5;
float decr = -5;

boolean shrink; 

int xPos, yPos; 

void setup() {
  size(600, 600);
  xPos = width/2; 
  yPos = height/2; 
}

void draw() {
  background(150);
  ellipse(xPos, yPos, d, d);
  
  if (d <= 1){
    d += incr;  
  }else{
    if (d <= 599){
      d -= decr;
    }
  }
}
