int num[][] = {{1, 2, 4, 5}, {5, 6, 7, 8}, {6, 7, 8, 9}}; //grid system to store variables

void setup(){
  println(num[2][0]);
  //to print 3 box, first number
  
  for(int i = 0; i<3; i++){
    for(int j = 0; j<4; j++){
      println(num[i][j]);
    }
  
  }

}
