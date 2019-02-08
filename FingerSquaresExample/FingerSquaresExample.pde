// Import the Leap Motion library
import de.voidplus.leapmotion.*;

// Create a global variable for the Leap Motion.
LeapMotion leap;

void setup() {
  // Create a 500 (width) by 200 (height) output.
  size(500, 200);
  
  // Setup a new Leap Motion instance 
  leap = new LeapMotion(this);
  
  // Allow the Leap Motion to continue reading values 
  // even when Processing is in the background.
  leap.allowBackgroundApps();
}

void draw() {
  // Reset the background to black.
  background(0);
  
  // For every finger that the Leap Motion sees, create an ellipse.
  for (Hand hand : leap.getHands()) {
    for (Finger finger : hand.getOutstretchedFingers()) {
      String fingerType = finger.getTypeName();
      println(fingerType);
      switch (fingerType) {
        case "thumb":
          drawSquare(0, 0, color(80, 230, 240));
          break;
        case "index":
          drawSquare(100, 0, color(255, 0, 0));
          break;
        case "middle":
          drawSquare(200, 0, color(0, 255, 0));
          break;
        case "ring":
          drawSquare(300, 0, color(0, 0, 255));
          break;
        case "pinky":
          drawSquare(400, 0, color(255, 197, 188));
          break;
      }
    }
  }
}

void drawSquare(int x, int y, color c) {
  fill(c);
  rect(x, y, 100, 100);
}
