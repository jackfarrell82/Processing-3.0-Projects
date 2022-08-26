int xPos = 400;
int yPos = 400;
void setup() {
  size(800, 800);
}

void draw() {
  background(155);
  strokeWeight(10); // sets the line strength for the middle line and the outline of the shapes
  line(400, 0, 400, 800);
  if (xPos >400) { // if the shape is on the left it is red, if on the right it is blue
    fill(0, 0, 255);
  }
  if (xPos < 400) {
    fill(255, 0, 0);
  }
  if (keyPressed == true) { // if a key on the keyboard is pressed the square becomes a circle
    if (xPos <400) {
      strokeWeight(10);
      line(400, 0, 400, 800);
    }
    ellipse(xPos, yPos, 400, 400);
    //---------------------------------------------------
    if (key == 'w'||key == 'W') { // if one of these specific keys is pressed the shape moves 
      yPos -= 2;
    }
    if (key == 'a'||key == 'A') {
      xPos -= 2;
    }
    if (key == 's'||key == 'S') {
      yPos += 2;
    }
    if (key == 'd'||key == 'D') {
      xPos += 2;
    }
  }
  //-----------------------------------------------------
  if (keyPressed == false) {
    rect(xPos - 200, yPos - 200, 400, 400);
  }
}
