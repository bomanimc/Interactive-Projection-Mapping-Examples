import de.voidplus.leapmotion.*;

LeapMotion leap;

void setup() {
  size(800, 500);
  background(0);

  leap = new LeapMotion(this);
}

void draw() {
  background(0);
  
  for (Hand hand : leap.getHands ()) {
    for (Finger finger : hand.getFingers()) {
      PVector fingerPosition = finger.getPosition();
      float ellipseSize = fingerPosition.z;
      fill(random(255), random(255), random(255));
      ellipse(fingerPosition.x, fingerPosition.y, ellipseSize, ellipseSize);
    }
  }
}

void leapOnInit() {
   println("Leap Motion Init");
}

void leapOnConnect() {
   println("Leap Motion Connect");
}

void leapOnDisconnect() {
   println("Leap Motion Disconnect");
}

void leapOnExit() {
   println("Leap Motion Exit");
}
 
