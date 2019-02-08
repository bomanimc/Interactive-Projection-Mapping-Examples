// Import the Leap Motion library
import de.voidplus.leapmotion.*;

// Create a global variable for the Leap Motion.
LeapMotion leap;

void setup() {
  // Create a 600 (width) by 600 (height) output.
  size(600, 600);
  
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
    for (Finger finger : hand.getFingers()) {
      PVector fingerPosition = finger.getPosition();
      float x = fingerPosition.x;
      float y = fingerPosition.y;
      float ellipseSize = fingerPosition.z;
      
      // Create a white ellipse at the position of the finger.
      // Set its size based on the finger's z-value.
      fill(255);
      ellipse(x, y, ellipseSize, ellipseSize);
    }
  }
}
