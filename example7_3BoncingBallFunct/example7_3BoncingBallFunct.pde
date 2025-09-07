// Declare all global variables (stays the same) int x = 0 ; int speed = 1 ;
int x = 20;
int y = 25;
int speed = 1;

void setup () {
  size (200, 200);
  smooth ();
}

void draw () {
  background (255);
  move ();
  bounce ();
  display ();
}

 void move ( ) {
// Change the x location by speed
 x = x + speed;
}

//A function to bounce the ball
 void bounce ( ) {
// If we've reached an edge, reverse speed 
if ( (x > width) || (x < 0) ) {
speed = speed * -1;
 }
}

//A function to display the ball 
void display() {
  background (255); 
  rectMode (CENTER);
  noFill (); 
  stroke(0); 
  rect (x, y, 32, 32); 
  fill (155,0,155);
  rect (x - 4 ,y - 4 , 4 , 4); 
  rect (x + 4 ,y - 4 , 4 , 4); 
  line (x - 4 , y + 4 , x + 4 , y + 4);

}
