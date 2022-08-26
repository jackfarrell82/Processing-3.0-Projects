void setup() {
  size(800, 800); // Creates the canvas
}
void draw() { 
  background(165); // sets the background to a colour
  if (mousePressed == false) { // checks if the mouse is pressed
    strokeWeight(0); // removes the outline from the shape
    ellipse(mouseX, mouseY, 100, 100); // draws a circle at the mouse point
  }
  if (mousePressed == true) {
    fill (0,0,0); // makes the shape black
    rect(mouseX - 50, mouseY - 50, 100, 100); // creates a rectangle at the mouse
  }
}
