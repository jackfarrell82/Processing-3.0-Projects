void setup() {
  size(600, 600);
}
void draw() {
  background(150);
  if (keyPressed == true) { // if a key on the keyboard is pressed it sets the colour of the circle depending on where the mouse is located
    fill(mouseX, mouseY, 255);
  }
  if (mousePressed == true) { // if the left moused button is pressed if draws the circle 
    if (mouseButton == LEFT) {
      ellipse(300, 300, 200, 200);
    }
  }
}
