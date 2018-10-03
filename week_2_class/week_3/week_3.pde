//draw circle in center
//calculate distance between mouse and circle
//if dist < radius -> change fill color
//make boolean, if my ellipse is pressed with if mousePressed
//true = mousePressed && dist. < radius of circle
//print value boolean to screen
//color var - circle bg, circle size, boolean for if ellipse is pressed
//x position and y position

int circleSize;
int xPos, yPos;
color circleColor, bgColor;

boolean isCircleOn;

int distance;

void setup(){
  size(500,500);
  bgColor = color(100, 100, 240);
  background(bgColor);
  
  xPos = width/2;
  yPos = height/2;
  
  circleSize = 100;
}

void draw(){
  background(bgColor);
  
  distance = int(dist(xPos, yPos, mouseX, mouseY));
  
  if(distance<circleSize/2){
    circleColor = color(240, 50, 180);
  }else{
    circleColor = color(255, 225, 255);
  }
  
  if(isCircleOn == true){ //if(isCircleOn)
    bgColor = 255;
  }else{
    bgColor = 150;
  }
  
  noStroke();
  fill(circleColor);
  ellipse(xPos, yPos, circleSize, circleSize);
  
}

void mousePressed(){
  if(distance<circleSize/2){
    isCircleOn = !isCircleOn;
    println(isCircleOn);
  }
  
  //if(distance<circleSize/2){
  //  bgColor = 255;
  //}else{
  //  bgColor =100;
  //}
}
