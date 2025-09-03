int rx = 30;
int ry = 100;
int rw = 100;
int rh = 55;

int rxy = 0;

int kald= 0;

boolean sort = false;

void setup () {
  size(400, 400);
  background(0);
  stroke(0, 255, 0);
}

void draw () {
  if (sort){
  stroke(0);
  }
  else {
  stroke(155,0,155);
  }
  
  for(int y= 0; y < rh; y++) {
   for(int x= 0; x < rw; x++)
   point(rx+x,ry+y);
   kald++;
   }
   println(kald);
  }
