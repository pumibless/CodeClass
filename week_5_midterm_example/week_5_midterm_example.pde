int x, y; 
int size; 
float dist; 
boolean buttonClicked; 


float result; 
float num1, num2; 

void setup(){
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  size = 50; 
  background(0); 
}

void draw(){

    result = (num1 * num2);  
    
    String s = num1 + " x " + num2 + " = " + result;
    
    textSize(32);
    text(s, 0, height*.8);
    
    if(buttonClicked == true){    
       fill(0, 255, 0); 
    }else if (buttonClicked == false){
       fill(255, 0, 0); 
    }
    
    num1 = random(0,100); 
    num2 = random(0,100); 
   
    ellipse(x, y, size, size);  
}

void mousePressed(){
  dist = dist(mouseX, mouseY, x, y); 
  if(dist <= size/2){
    buttonClicked = true; 
  }
  
  
//int a = num1;
//int b = num2;
//float product = a * b;
  
}
