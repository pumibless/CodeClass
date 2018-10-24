// Fix all the syntax errors so the code runs.

int counter = 0;
boolean isCodeGreat = true;

void setup() {
    // we'll create a counter variable to count the frames

  String welcomeMsg = "welcome to the first midterm question!";
  
  println(welcomeMsg);
  
  println("now we'll do a loop and print the iterating value!");
  for (int i = 0; i<3; i+=3){
    println("this is loop number " + i);
      float floatArray []= new float[100];
        println("there are " + floatArray.length + " positions in floatArray");
  }

}
void draw() {

  // we'll increment counter every frame until 60, then reset
  if (counter < 60 && isCodeGreat == true) {
    counter++;
  } else {
    counter = 0;
  }
}
