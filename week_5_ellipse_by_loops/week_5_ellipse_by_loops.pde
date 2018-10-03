//drawing ellipses)
void setup(){
  size(600, 600);
}

void draw(){ //can do if you wanted a cleaner function when changing canvas size: for(int i = 0; i<=width; i+=10) [enter] {ellipse(i, height/2, 10, 10);}
  //good for a set number of loops
  for(int i = 0; i<60; i++){
    fill(map(i, 0, 60, 0, 225));
    int r = int (20); //int(random(10, 20)); if u put this in setup function itll be still, but placed here it'll look static-y
    ellipse(i*r, height/4, 10, 10);
    //ellipse(i*10, height/4, 10, 10); 
  }
  //if you want to vary the size of your shapes
  int size = 60;
  for(int i = 0; i<= width; i+=size){
    int c = int(map(i, 0, width, 0, 225));
    fill(0, c , c);
    //fill(60, c, c); for more reddish color
    ellipse(i, height/1.5,size, size);
  }
}
