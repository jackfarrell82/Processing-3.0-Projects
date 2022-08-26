float ballXPos = 400;
float ballYPos = 400;
void setup() {
  size(800, 800);
  background(150);
}

void draw() {
  ellipse(ballXPos, ballYPos, 100, 100);
  fill(255, 255, 255);
  //-----------------------------------
  if (ballYPos <= 50) { // if the ball is at the edge of the screen it changes colour to red
    ballYPos = 50;
    fill(255, 0, 0);
  }
  if (ballYPos >= 750) {
    ballYPos = 750; 
    fill(255, 0, 0);
  }
  if (ballXPos <= 51) {
    ballXPos = 50; 
    fill(255, 0, 0);
  }
  if (ballXPos >= 750) {
    ballXPos = 750;
    fill(255, 0, 0);
  }
  //---------------------------
  if (keyPressed == true) { // controls the movement of the circle using the wasd keys
    if (key == 'w'|| key == 'W') {
      ballYPos -= 2;
    }
    if (key == 'a'|| key == 'A') {
      ballXPos -= 2;
    }
    if (key == 's'|| key == 'S') {
      ballYPos += 2;
    }
    if (key == 'd'|| key == 'D') {
      ballXPos += 2;
    }
    if (key == 'r'|| key == 'R') {
      ballYPos = 400;
      ballXPos = 400;
    }
  }
  //-----------------------------
  if (mousePressed == true) { // if the mouse is pressed the tail is removed
    background(150);
  }
}
