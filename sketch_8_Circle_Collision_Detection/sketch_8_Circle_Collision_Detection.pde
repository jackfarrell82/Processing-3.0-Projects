float ballTwoX = 700; // creats all the variables
float ballTwoY = 700;
float ballThreeX = 400;
float ballThreeY = 400;
float ballOneDiameter = 100;
float ballTwoDiameter = 100;
float ballThreeDiameter = 200;
float distance12;
float distance13;
float distance23;
boolean collision = false;
void setup() {
  size(800, 800);
}

void draw() {
    if (collision == false) { // changes the background if there is a collision
    background(0, 255, 0);
  }
  if (collision == true) {
    background(255, 0, 0);
  }

  distance12 = dist(mouseX, mouseY, ballTwoX, ballTwoY); // measures the distance between each of the circles
  distance13 = dist(mouseX, mouseY, ballThreeX, ballThreeY);
  distance23 = dist(ballTwoX, ballTwoY, ballThreeX, ballThreeY);

  if ((ballOneDiameter + ballTwoDiameter)/2 >= distance12  // if the radius of both circles added together is less than the distance between the two circle centres then a collision is detected 
  || (ballOneDiameter + ballThreeDiameter)/2 >= distance13
  || (ballThreeDiameter + ballTwoDiameter)/2 >= distance23) {
    collision = true;
  } else {
    collision = false;
  }

  ellipse(mouseX, mouseY, ballOneDiameter, ballOneDiameter); // draws the circles onto the canvas
  ellipse(ballTwoX, ballTwoY, ballTwoDiameter, ballTwoDiameter);
  ellipse(ballThreeX, ballThreeY, ballThreeDiameter, ballThreeDiameter);

  if (keyPressed == true) { // controls the movement for one of the three circles
    if (key =='w'||key == 'W') {
      ballThreeY -= 2;
    }
    if (key =='s'||key=='S') {
      ballThreeY += 2;
    }
    if (key=='a'||key=='A') {
      ballThreeX -= 2;
    }
    if (key=='d'||key=='D') {
      ballThreeX += 2;
    }
  }
}
