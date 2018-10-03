boolean isbuttonOn;

int xPos, yPos;
int rectLength;
color rectColor, bgColor, bgOn;
int distance;

float x; 
float y; 
float xSpeed; 
float ySpeed; 
float r, g, b; 
int radius; 
int circleColor;

int textcolor;

void setup() {
  size(500, 500);
  xPos = width/2;
  yPos = height/2;
  rectMode(CENTER);
  rectLength = 100;
  rectColor = color(94, 174, 255);
  bgColor = color(240, 50, 180);
  bgOn = color(255, 225, 255);
  background(bgColor);
  
  radius = 30;
  xSpeed = 5;
  ySpeed = 6;
  
  smooth();
  x = width/2;
  y = height/2;
}

void draw() {
  background(bgColor);
  
  x = x + xSpeed;
  y = y + ySpeed;

  if( x >= (width- radius/2) || x<= radius/2){
    xSpeed = xSpeed *-1; //reverses xDirection
  }
  if( y >= (height-radius/2) || y <= radius/2){
    ySpeed = ySpeed * -1; 
  }
  
  noStroke();
  fill(circleColor);
  ellipse(x, y, radius, radius); 
  
  
  fill(rectColor);
  rect(xPos, yPos, rectLength, rectLength);
  
  distance = int(dist(xPos, yPos, mouseX, mouseY));
  
  if (distance < rectLength/2) {
    rectColor = color(94, 174, 255);
  }else{
    rectColor = color(162, 208, 255);
  }
  
  if (isbuttonOn == true) {
    bgColor = bgOn; 
    circleColor = color(0);
    textcolor = color(0);
    x = random(100, 400);
    y = random(100, 400);
  }else{
    bgColor = 0;
    circleColor = color(225);
    textcolor = color(225);
    
  }
  
  fill(textcolor);
 
  if (isbuttonOn == true) {
    text("this is kinda messed up but Button is " + isbuttonOn, 20, 20);
  }else {
  text("Button is " + isbuttonOn, 20, 20);
  }
 
}

void mousePressed() {
  if (distance < rectLength/2) {
    isbuttonOn = !isbuttonOn;
    println(isbuttonOn);
  }  
}
  
