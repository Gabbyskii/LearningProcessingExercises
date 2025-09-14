// Example 9-9, page 154: An array of Car objects
Car[] cars = new Car[100]; // An array of 100 Car objects!

void setup() {
  size(200, 200);
  smooth();
  
  // Initialize each Car using a for loop
  for (int i = 0; i < cars.length; i++) {
    cars[i] = new Car(color(i * 2), 0, i * 2, i / 20.0);
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < cars.length; i++) {
    cars[i].move();
    cars[i].display();
  }
}

class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  // Constructor
  Car(color c_, float xpos_, float ypos_, float xspeed_) {
    c = c_;
    xpos = xpos_;
    ypos = ypos_;
    xspeed = xspeed_;
  }
  
  void display() {
    rectMode(CENTER);
    stroke(0);
    fill(c);
    rect(xpos, ypos, 20, 10);
  }
  
  void move() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
