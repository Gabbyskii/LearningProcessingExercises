// Array to hold multiple snakes
Snake[] snakes;

void setup() {
  size(400, 400);
  smooth();
  
  // Create 3 snakes with different properties
  snakes = new Snake[3];
  snakes[0] = new Snake(color(255, 0, 0), 50, 12);    // red, 50 segments, size 12
  snakes[1] = new Snake(color(0, 255, 0), 30, 8);     // green, 30 segments, size 8
  snakes[2] = new Snake(color(155,00,155), 40, 16);    // blue, 40 segments, size 16
}

void draw() {
  background(255);
  
  // Update and display all snakes with slight offsets
  snakes[0].update(mouseX, mouseY);           // purple follows mouse
  snakes[1].update(mouseX - 30, mouseY - 30); // black offset
  snakes[2].update(mouseX + 20, mouseY + 20); // dark blue offset
  
  for (int i = 0; i < snakes.length; i++) {
    snakes[i].display();
  }
}

// Snake Class
class Snake {
  int[] xpos, ypos;
  color c;
  int trailLength;
  int segmentSize;
  
  Snake(color c_, int trailLength_, int size_) {
    c = c_;
    trailLength = trailLength_;
    segmentSize = size_;
    
    xpos = new int[trailLength];
    ypos = new int[trailLength];
    
    // Initialize all positions
    for (int i = 0; i < trailLength; i++) {
      xpos[i] = 0;
      ypos[i] = 0;
    }
  }
  
  void update(int targetX, int targetY) {
    // Shift all positions forward
    for (int i = 0; i < trailLength - 1; i++) {
      xpos[i] = xpos[i + 1];
      ypos[i] = ypos[i + 1];
    }
    
    // New position at the end
    xpos[trailLength - 1] = targetX;
    ypos[trailLength - 1] = targetY;
  }
  
  void display() {
    for (int i = 0; i < trailLength; i++) {
      noStroke();
      float alpha = map(i, 0, trailLength - 1, 50, 255);
      fill(c, alpha);
      ellipse(xpos[i], ypos[i], segmentSize, segmentSize);
    }
  }
}
