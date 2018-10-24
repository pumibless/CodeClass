String myStr = "I am a string!";
String anotherStr = "I want to use the myFunc function to print this String!";

void setup() {
  myFunc(myStr);
}

void myFunc(String myStr) {
  println(myStr);
}

void str2 (String anotherStr){
  println(anotherStr);
}
