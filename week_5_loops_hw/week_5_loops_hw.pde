void setup(){
size(500, 500);
noStroke();
background(255, 0, 0);
int rows = int(pow(2, int(random(4, 5))));
int u = height / (rows + 4);
int thickness = int(pow(2, int(random(1, 3))));
int uth1 = u / thickness;
int uth2 = u + uth1;
int startX = int(-u * 0.75);
int startY = height/3 - rows/2 * u;
int endX = width+u;
int endY = height + rows/2 * u;
for (int x = startX; x < endX; x += u) {
 for (int y = startY; y < endY; y += u) {
 if (random(1) > .25) {
 fill(255, 89, 204);
 quad(x, y, x+u, y+u, x+uth2, y+u, x+uth1, y);
 }
 else {
 fill(255, 186, 235);
 quad(x, y+u, x+u, y, x+uth2, y, x+uth1, y+u);
     }
   }
  }
}

void draw(){
background(255, 0, 0);


}
