float ballVertPosu;// creates the floats for the vertical and horizontal ball positions
float ballHozPosd;
float ballHozPosu;
float ballVertPosd;
void setup() {
  size(800, 800);
  ballHozPosu = 400; // sets the variables to 400
  ballVertPosu = 400;
  ballHozPosd = 400;
  ballVertPosd = 400;
}
void draw() {
  background(155);
  ellipse(ballHozPosu, ballVertPosu, 100, 100);
  ellipse(ballHozPosu, ballVertPosd, 100, 100);
  ellipse(ballHozPosd, ballVertPosu, 100, 100);
  ellipse(ballHozPosd, ballVertPosd, 100, 100);
  if (mousePressed == false) { // if the mouse is not pressed the circles are white and move away from the centre
    fill (255, 255, 255);
    ballVertPosu+=1;
    ballHozPosd-=1;
    ballHozPosu+=1;
    ballVertPosd-=1;
  }
  if (mousePressed == true) {// if the mouse is pressed the circles are black and move towards the centre
    fill (0, 0, 0);
    ballVertPosu-=1;
    ballHozPosd+=1;
    ballHozPosu-=1;
    ballVertPosd+=1;
  }
}
