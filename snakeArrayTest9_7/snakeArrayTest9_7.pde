// Single snake
Snake snake;

void setup() {
  size(200, 200);
  smooth();
  
  // Create one purple snake
  snake = new Snake(color(128, 0, 128), 50, 30);
}

void draw() {
  background(255);
  
  // Update and display the snake
  snake.update(mouseX, mouseY);
  snake.display();
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
