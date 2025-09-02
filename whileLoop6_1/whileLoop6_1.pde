/*void setup() {
size (200, 200); 
background (255); 
}

void draw (){ 
int y = 0;

while (y < height) {
stroke (0) ;
line (0, y, 200, y);
y = y + 20;
}
}*/

float w = 0;

void setup(){
size (400, 400); 
}

void draw(){
 background (255);
  w = 0;
  
  while(w < 200){
  stroke(0);
  noFill();
  ellipse(200, 200, w, w); 
  w = w + 25;
}
} 
