
float xPos, yPos; 
int size = 50;

color circleColor, bgColor;
boolean isCircleOn;
int distance;

void setup() {
  size(500, 500); 
  xPos = width/2; 
  yPos = height/2;
}

void draw() {
  background(0);
  distance = int(dist(xPos, yPos, mouseX, mouseY));
  background(bgColor); 
  
  if(distance<size/2){
    circleColor = color(255, 0, 150); 
    println("Click the circle dummy");
  }else{
    circleColor = color(255, 255, 255);
    println("Click on it again!");
  }
  ellipse(xPos, yPos, size, size);
  
  int bgColor; 
  int b;
  if(isCircleOn == true){ 
  bgColor = int(map(calcDist(xPos,yPos), 0, width/2, 200, 255)); 
  b = int(map(calcDist(xPos, yPos), 0, width/2, 255, 100)); 
  background(bgColor, 0, b); 
  String s = "Like a plastic bag?";
  fill(0);
  text(s, 10, 10, 300, 80);
  }else{
  bgColor = int(map(calcDist(xPos,yPos), 0, width/2, 255, 100)); 
  b = int(map(calcDist(xPos, yPos), 0, width/2, 10, 255)); 
  background(bgColor, 0, b); 
  String s = "Do you ever feel?";
  fill(255);
  text(s, 10, 10, 300, 80);
  }
  
  ellipse(xPos, yPos, size, size); 

  println(calcDist(xPos, yPos)); 
}


float calcDist(float shapeX, float shapeY) {
  float dist = dist(mouseX, mouseY, shapeX, shapeY); 
  return dist;
}

void mousePressed(){
  if(distance<size/2){
    isCircleOn = !isCircleOn; 
    println(isCircleOn);
  }
}
