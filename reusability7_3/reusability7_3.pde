float x = 100;
float y = 100;

void setup(){
size(400,400);

}

void draw(){
  background(255);
  fill(155,0,155);
  
  ellipse(100,100,20,20);
  ellipse(200,200,50,50);
  //ellipse();
  //ellipse(200,200,70,70);
}

void ellipse(float x, float y){
  stroke(0);
 
  beginShape();
  ellipse(x,y-50,70,70);
  ellipse(x+50,y,70,70);
  endShape(CLOSE);
}
