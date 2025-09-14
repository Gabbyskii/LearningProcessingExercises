// Exercise 9-8: Button class with array of buttons
Button[] buttons;

void setup() {
  size(400, 300);
  
  //Array of 6 buttons 
  buttons = new Button[6];
  buttons[0] = new Button(50, 50, 60, 60);
  buttons[1] = new Button(150, 50, 60, 60);
  buttons[2] = new Button(250, 50, 60, 60);
  buttons[3] = new Button(50, 150, 60, 60);
  buttons[4] = new Button(150, 150, 60, 60);
  buttons[5] = new Button(250, 150, 60, 60);
}

void draw() {
  background(100);
  // Display all buttons
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].display();
  }
}

void mousePressed() {
  // Check each button for mouse press
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].pressed(mouseX, mouseY);
  }
}

class Button {
  float x;
  float y;
  float w;
  float h;
  boolean on;
  
  Button(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    on = false; //Button starts off
  }
  
  void display() {
    //Change color based on button state
    if (on) {
      fill(128, 0, 128); //Purple when pressed
      stroke(255);
    } else {
      fill(255); //Gray when off
      stroke(0);
    }
    rect(x, y, w, h);
  }
  
  void pressed(int mx, int my) {
    //Check if mouse is inside button
    if (mx > x && mx < x + w && my > y && my < y + h) {
      on = !on; 
    }
  }
}
