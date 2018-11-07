class Plant{
//data
  int plantHeight; //stem
  int numLeaves;      //ellispe
  color plantColor;
  int xPos;
 
  
  //constructor
  Plant(int _xPos){
  xPos = _xPos; 
  
  }
  
  void grow(){
    plantHeight+= .01;
    
  }

  void display(int _plantHeight, int _numLeaves, color _plantColor){
  plantHeight = _plantHeight;
  
  fill(_plantColor);
  numLeaves = _numLeaves;
  
  for(int i = 0; i < numLeaves; i++){
    ellipse(xPos, plantHeight + 30*i, 50+i*5, 20);
  }
  
  rect(xPos, plantHeight, 10, 500);
  }

}
