
//background
//lawn- rect
//tree- triangle, rect
//berry- elispes
//add small berries, code to increase to big berries
//while simultaneously code to change color of berries on ground

int berryX;
int berryWidth;
int berryX1;
int berryY1;
int berryWidth1;
int berryX2;
int berryY2;
int berryWidth2;
int berryX3;
int berryY3;
int berryWidth3;
int berryX4;
int berryY4;
int berryWidth4;
int berrynX2;
int berrynY2;
int berrynWidth2;
int berrynX3;
int berrynY3;
int berrynWidth3;
int berrynX4;
int berrynY4;
int berrynWidth4;
int trunkX1;
int trunkY1;
int trunkWidth;
int trunkHeight;
int grassHeight;
int x1, y1, x2, y2, x3, y3; 


void setup() {
  size(500, 500);
  background(226, 215, 255);

  
  berryX = int(width*.8);
  berryWidth = int(width*.08);
  berryX1 = int(width*.16);
  berryY1 = int(height*.86);
  berryWidth1 = int(width*.1);
  berryX2 = int(width*.56);
  berryY2 = int(height*.5);
  berryWidth2 = int(width*.02);
  berryX3 = int(width*.42);
  berryY3 = int(height*.6);
  berryWidth3 = int(width*.02);
  berryX4 = int(width*.48);
  berryY4 = int(height*.4);
  berryWidth4 = int(width*.02);
  berrynX2 = int(width*.56);
  berrynY2 = int(height*.5);
  berrynWidth2 = int(width*.02);
  berrynX3 = int(width*.42);
  berrynY3 = int(height*.6);
  berrynWidth3 = int(width*.02);
  berrynX4 = int(width*.48);
  berrynY4 = int(height*.4);
  berrynWidth4 = int(width*.02); 
  trunkX1 = int(width*.45);
  trunkY1 = int(height*.4);
  trunkWidth = int(width*.1);
  trunkHeight = int(height*.5);
  grassHeight = int(width*.2);
  x1 = int(width*.5);
  y1 = int(height*.2);
  x2 = int(width*.24);
  y2 = int(height*.7);
  x3 = int(width*.76);
  y3 = int(height*.7);
  }
  
void draw() {
  background(226, 215, 255);
  
  noStroke();
  fill(245, 242, 255);
  rect(0, int(width- grassHeight), width, grassHeight);
  
  fill(255, 117, 180);
  ellipse(berryX, berryX, berryWidth, berryWidth);
  ellipse(berryX1, berryY1, berryWidth1, berryWidth1);
   
  fill(221, 115, 150);
  pushMatrix();
  translate(80, 80);
  ellipse(berryX, berryX, berryWidth * 2, berryWidth * 2);
  ellipse(berryX1, berryY1, berryWidth1 * 2, berryWidth1 * 2);  
  popMatrix();
  
  
  fill(175, 71, 40);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(mouseX-mouseY));
  rect(-25,-25, trunkWidth, trunkHeight);
  popMatrix();
  
  fill(120, 121, 255);
  //pushMatrix();
  //translate(width/2, height/2);
  //rotate(radians(mouseX-mouseY));
  triangle(x1, y1, x2, y2, x3, y3);
  //popMatrix();
  
  fill(168, 115, 101);
  pushMatrix();
  rotate(radians(21));
  rect(trunkX1/2, trunkY1/2, trunkWidth/2, trunkHeight/2);
  
  fill(164, 160, 237);
  triangle(x1/2, y1/2, x2/2, y2/2, x3/2, y3/2);
  
  fill(255, 191, 220);
  ellipse(berryX2/2, berryY2/2, berryWidth2/2, berryWidth2/2);
  ellipse(berryX3/2, berryY3/2, berryWidth3/2, berryWidth3/2);
  ellipse(berryX4/2, berryY4/2, berryWidth4/2, berryWidth4/2);
  popMatrix();
  
  if(mousePressed){
  fill(255, 117, 180);
  fill( random(255), random(255), random(255), random(255)); 
    ellipse(berrynX2, berrynY2, berrynWidth2, berrynWidth2);
    ellipse(berrynX3, berrynY3, berrynWidth3, berrynWidth3);
    ellipse(berrynX4, berrynY4, berrynWidth4, berrynWidth4);
  }
}

  
  void keyPressed (){
    if(key == CODED) {
      if(keyCode == UP){
        berrynWidth2  +=2; 
      }
      if(keyCode == DOWN) {
         berrynWidth2 -=2;
      }
  }
    if(key == CODED){
      if(keyCode == UP){
        berrynWidth3 +=2;
      }
      if(keyCode == DOWN){
        berrynWidth3 -=2;
     }
  }
    if(keyCode == CODED){
      if(keyCode == UP){
        berrynWidth4 +=2;
      }
      if(keyCode == DOWN){
        berrynWidth4 -=2;
     }
  }
}   
  
 
