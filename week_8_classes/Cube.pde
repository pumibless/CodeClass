class Cube{
// data, cube size, cube color, 
  int cubeHeight;
  int cubeWidth;
  color cubeColor;
  int xPos;
  int yPos;
  


  Cube(int _xPos){
  xPos = _xPos;
    
  }
  
  void cubeSize(){
    cubeHeight += int(random(100,1000));
    cubeWidth =+ int(random(100,200));
  }
  
  void placement(){
    yPos+= .01;
  }
  
  void display(int _cubeHeight, int _cubeWidth, color _cubeColor){
  cubeHeight = _cubeHeight;
  cubeWidth = _cubeWidth;
  fill(_cubeColor);
  rect(xPos, yPos, cubeWidth, cubeHeight); 

   }
   
}
