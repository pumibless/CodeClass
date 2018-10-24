void setup() {
  size(600, 600);
}

void draw() {
  background(20);
  
  fill(255);
  
  float hourPos = map(hour(), 0, 60, 0, width/2);
  rect(hourPos, 400, width/60, 50);
  
  float minutePos = map(minute(), 0, 60, 0, width/2);
  rect(minutePos, 400, width/60, 100);
  
  float secondPos = map(second(), 0, 60, 0, width);
  rect(secondPos, 400, width/60, 600);
  
}
