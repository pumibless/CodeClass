//structuring a loop 

void setup(){
  int index = 10;
  while(index>0){
  println(index);
  index--;
  
  }
  //for(int i = 0; i<11; i++) the i++ is increments (i+=5 would be by 5s) this function is going up to 10 
  //for(int i = 10; i>0; i--){ going down from 10
  for(int i = 0; i<105; i+=5){
    for(int j = 0; j<105; j+=5){
      println("for loop: i is " + i + " j is " + j);
    }           // text printed + function
  }         
}
