void setup(){
  size(800, 800);
  
  noStroke();
}

void draw(){   //affecting spacing, if you dont wanna calc math
 background(255);
 int numCircles = 20; 
 
 int size = width/numCircles; 
 
 for(int i = size/2; i<width; i+=width/numCircles){
     for(int j = size/2; j<height; j+=height/numCircles){
       int g = int(map(i, 0, width, 0, 255));
       int r = int(map(j, 0, height, 0, 255));
       
       float d = dist(mouseX, mouseY, i, j);
       //float o = dist(mouseX/1.5, mouseY/1.5, i/1.5, j/1.5); opacity
                         
                         //this controls the max distance of circle size to mouse dist, test width/4 and 100
       float s = map(d, 0, width/2, 20, 40);
       
       float o = map(d, 0, width, 0, 255);
       //float o = map(d, 0, width/2, 255, 63);
       fill(r, g, 100, o);
                 //four component affects opacity (r, g, 100, 63)
       ellipse(i, j, s, s);
       //ellipse(i, i, size, size) diagonal line
     }
  }
}
