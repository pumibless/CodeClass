int num = 10;
int size;
int speed[][] = new int[num][num];
boolean clicked [][] = new boolean[num][num];
color gridC[][] = new color [num][num];


void setup(){
  size(500, 500);
  size = width/num;
  
  for(int i = 0; i<num; i++){
    for(int j = 0; j<num; j++){
      gridC[i][j] = color(random(100,255), random(0, 50), random (150, 255));
      speed[i][j] = 0;
    }
  }
}



void draw(){
  background(0);
  noStroke();
  for(int i = num-1; i>=0; i--){
    for(int j = num-1; j>=0; j--){
      fill(gridC[i][j]);
      if(clicked[i][j]){
        speed[i][j] += 5;
      }
      rect(i*size, j*size + speed[i][j], size, size);
    }
  }
}



void mousePressed(){
  for(int i = 0; i<num; i++){
    for(int j = 0; j<num; j++){
      if(mouseX>i*size && mouseX<= (i+1)*size 
        && mouseY>j*size && mouseY <= (j+1)*size){
        println("i is: " + i + " j is: " + j);
        gridC[i][j] = color(random(100,255), random(0, 50), random (150, 255));
        }
      }
    }
  }
