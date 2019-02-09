void setup() {
  // Set the output to be 400 (width) by 200 (height) output.
  size(400, 200);
}

void draw() {
  // Reset the background to black.
  background(0);
 
  // Place a white circle at the position of the mouse.
  fill(255);
  ellipse(mouseX, mouseY, 150, 150);
}
