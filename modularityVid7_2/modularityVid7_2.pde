float x = 200;
float y = 200;
//boolean moveRight = true;

float Xspeed = 2;
float Yspeed = 4;

void setup () {
 size(400,400);
}

void draw(){
 background(255);
 displayBall();
 moveBall();
 checkEdges();
}

void displayBall() {
 //functions that show us the circle - moved from draw
 fill(155,0,155);
 ellipse(x,y,50,50);
 
}

void moveBall() {
//functions that control ball movement
 x = x + Xspeed;
 y = y + Yspeed;
}

void  checkEdges(){
 //functions that control if ball hit edges
 if ((x > width ) || (x < 0 )) {
  Xspeed = Xspeed * -1;
 }
 
 if ((y > height) || ( y < 0 )) {
  Yspeed = Yspeed * -1;
 }
}
