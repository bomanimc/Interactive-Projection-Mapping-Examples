import de.voidplus.leapmotion.*;

// Import the Syphon library.
import codeanticode.syphon.*;

LeapMotion leap;

// Create global variables for PGrapics canvas (layer)
// and a Syphon server.
PGraphics canvas;
SyphonServer server;

void setup() {
  // Specify P2D (required to use P2D or P3D for Syphon).
  size(500, 200, P2D);
  
  leap = new LeapMotion(this);
  leap.allowBackgroundApps();
  
  // Setup a new instances of our PGraphics canvas and Syphon server.
  canvas = createGraphics(600, 600, P2D);
  server = new SyphonServer(this, "Processing Syphon Server");
}

// In draw(), add `canvas.` in front of all calls that effect the visual
// output to ensure that they update the canvas PGraphics layer.
void draw() {
  // Call canvas.beginDraw at the start to tell the canvas 
  // we want to draw on it.
  canvas.beginDraw();
  
  canvas.background(0);
  
  // For every finger that the Leap Motion sees, create an ellipse.
  for (Hand hand : leap.getHands()) {
    for (Finger finger : hand.getOutstretchedFingers()) {
      String fingerType = finger.getTypeName();
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
  
  // Call canvas.endDraw to tell the canvas we're done drawing.
  canvas.endDraw();
  
  // Place the canvas onto our default output, so we can see it.
  image(canvas, 0, 0);

  // Send the canvas to any connected Syphon clients.
  server.sendImage(canvas);
}

void drawSquare(int x, int y, color c) {
  canvas.fill(c);
  canvas.rect(x, y, 100, 100);
}
