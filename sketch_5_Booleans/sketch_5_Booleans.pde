boolean moveRectDown = false; // creates the variables
boolean moveBallLeft = false;
int circleHozPos = 0;
int squareVertPos = 1;

void setup() {  
  size(500, 500);
}

void draw() {
  background(150);
  if (key == 'r'|| key =='R') { // when the r,g,b, or w key is pressed it changes the shapes to their respective colour
    fill(255, 0, 0);
  }
  if (key == 'g'|| key =='G') {
    fill(0, 255, 0);
  }
  if (key == 'b'|| key =='B') {
    fill(0, 0, 255);
  }
   if (key == 'w'|| key =='W') {
    fill(255, 255, 255);
  }
  ellipse(circleHozPos, 200, 200, 200);
  if (circleHozPos >= 400) { // if the circle touches the edge of the screen it changes the boolean variable so the circle goes the opposite direction
    moveBallLeft = true;
  }
  if (circleHozPos <= 100) {
    moveBallLeft = false;
  }
  if (moveBallLeft == true) {
    circleHozPos = circleHozPos - 3;
  }
  if (moveBallLeft == false) {
    circleHozPos = circleHozPos + 3;
  }

  //-----------------------------------------------------
  rect(150, squareVertPos, 200, 200);
  if (squareVertPos >= 400) { // if the rectangle touches the edge of the screen it changes the boolean variable so the rectangle goes the opposite direction
    moveRectDown = false;
  }
  if (squareVertPos <= 0) {
    moveRectDown = true;
  }
  if (moveRectDown == true) {
    squareVertPos = squareVertPos + 3;
  }
  if (moveRectDown == false) {
    squareVertPos = squareVertPos - 2;
  }
}
