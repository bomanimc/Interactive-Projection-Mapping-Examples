import de.voidplus.leapmotion.*;
import codeanticode.syphon.*;

LeapMotion leap;
PGraphics canvas;
SyphonServer server;

void setup() {
  size(600, 600, P2D);

  leap = new LeapMotion(this);
  leap.allowBackgroundApps();
  canvas = createGraphics(600, 600, P2D);
  server = new SyphonServer(this, "Processing Syphon Server");
}

void draw() {
  canvas.beginDraw();
  canvas.background(0);
  
  for (Hand hand : leap.getHands()) {
    for (Finger finger : hand.getFingers()) {
      PVector fingerPosition = finger.getPosition();
      float x = fingerPosition.x;
      float y = fingerPosition.y;
      float ellipseSize = fingerPosition.z;
      canvas.fill(random(255), random(255), random(255));
      canvas.ellipse(x, y, ellipseSize, ellipseSize);
    }
  }
  
  canvas.endDraw();
  image(canvas, 0, 0);
  server.sendImage(canvas);
}
