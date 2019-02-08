import de.voidplus.leapmotion.*;

LeapMotion leap;

void setup() {
  size(600, 600);

  leap = new LeapMotion(this);
  leap.allowBackgroundApps();
}

void draw() {  
  for (Hand hand : leap.getHands()) {
    for (Finger finger : hand.getFingers()) {
      PVector fingerPosition = finger.getPosition();
      float x = fingerPosition.x;
      float y = fingerPosition.y;
      float ellipseSize = fingerPosition.z;
      fill(255);
      ellipse(x, y, ellipseSize, ellipseSize);
    }
  }
}
