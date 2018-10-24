int size;
float xPos, yPos; 

int distance;

void setup() {
  size(600, 600);
  size = 200;
  xPos = width/2; 
  yPos = height/2;
}

void draw() {
  background(150);
  distance = int(dist(xPos, yPos, mouseX, mouseY));
  
  if(distance<size/2 && mousePressed){
    fill(255); 
  }else{
    fill(150);
    
  }
  //if (mousePressed) {
  //  fill(255);
  //} else {
  //  fill(150);
  //}
  
  ellipse(xPos, yPos, size, size);
}
