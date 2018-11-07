
Plant garden [] = new Plant [10];


void setup(){
  size(700, 500);
  
  noStroke();
  
  for(int i = 0; i<garden.length;i++){
    garden[i] = new Plant(int(random(100,width)));
  }
  
}

void draw (){

  
  for(int i = 0; i<garden.length; i++){
    garden[i].display(2+i*3, i*3, color(0, i*20, 50));
  }
}
