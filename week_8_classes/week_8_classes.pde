Cube Plot [] = new Cube [20];
void setup(){
  background(255);
  size(700, 500);
  
  noStroke();
  
  for(int i = 0; i< Plot.length; i++){
    Plot[i] = new Cube(int(random(100, width)));
  }
}

void draw(){
  for(int i = 0; i<Plot.length; i++){
    Plot[i].display(200+i*3, i*1/2, color(255, i*10, 20));
  }
}
