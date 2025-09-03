int rx = 30;
int ry = 100;
int rw = 100;
int rh = 55;

int rxy = 0;

void setup () {
  size(400, 400);
  background(0);
  stroke(0, 255, 0);
}

void draw () {
int x = 0;
  while (x < rw) {
    stroke(0, 255, 0);
    point(rx+x, ry);
    x = x + 1;
  }
  //right line with points
int y = 0;
  while (y < rh) {
    point(rx + rw, ry + y);
    y = y + 1;
  }

  //bottom line with points
   x=0;
  while (x < rw) {
    point(rx + rw - x, ry + rh);
    x = x + 1;
  }

  //left line with points
  y=0;
  while (y < rh) {
    println("hej");
    point(rx, ry + rh - y);
    y = y + 1;
  }
}
