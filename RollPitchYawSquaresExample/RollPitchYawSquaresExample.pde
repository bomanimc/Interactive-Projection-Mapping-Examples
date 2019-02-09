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
  size(300, 300, P2D);
  
  leap = new LeapMotion(this);
  leap.allowBackgroundApps();
  
  // Setup a new instances of our PGraphics canvas and Syphon server.
  canvas = createGraphics(300, 300, P2D);
  server = new SyphonServer(this, "Processing Syphon Server");
}

// In draw(), add `canvas.` in front of all calls that effect the visual
// output to ensure that they update the canvas PGraphics layer.
void draw() {
  // Call canvas.beginDraw at the start to tell the canvas 
  // we want to draw on it.
  canvas.beginDraw();
  
  canvas.background(0);
  
  // Place a square based on the position of the hand
  for (Hand hand : leap.getHands()) {
    PVector position = hand.getPosition();
    if (position.y > width/2) {
      drawSquare(100, 0, color(255, 0, 0));
    } else {
      drawSquare(100, 200, color(255, 0, 0));
    }
    
    if (position.x > height/2) {
      drawSquare(0, 100, color(0, 255, 0));
    } else {
      drawSquare(200, 100, color(0, 255, 0));
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
