
String colors[]= {"red", "blue", "green"};

//float randomNums[] = new float [
void setup (){
  size(960, 540);
  background(0);
  //println(colors);
 
}

void draw() {
    background (0);
    
    for(int i = 0; i<60; i++){
    fill(map(i, 100,  60 , 20, 225));
    int r = int (100);
    ellipse(i*r, height/1.5, 100, 100);
  
    float red = 0.60;
    float blue = 0.10;
    float green = 0.30;
    
    float num = random(1);  
    
      if (num < red) {
    fill(255, 53, 2);
    
    // If random number is between .6 and .7
  } else if (num < blue + red) {
    fill(156, 255, 28);
    // All other cases (i.e. between .7 and 1.0)
  } else {
    fill(10, 52, 178);
  }
  

  }
      
    for (int i = 0; i < colors.length; i++){
    print(colors[i] + " ");
      if (colors[i] == "red"){

      textSize(80);
      text("red", 50, 200);
      }
      if (colors[i] == "blue"){

      textSize(80);
      text("blue", 360, 200);
      }
      if (colors[i] == "green"){
 
      textSize(80);
      text("green", 700, 200);
      }
  
    }
}
