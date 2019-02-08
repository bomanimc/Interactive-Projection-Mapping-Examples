import codeanticode.syphon.*;

PGraphics canvas;
SyphonServer server;

void setup() {
  size(600, 600, P2D);
  canvas = createGraphics(600, 600, P2D);
  server = new SyphonServer(this, "Processing Syphon Server");
}

void draw() {
  canvas.beginDraw();
  canvas.background(0);
  
  float x = mouseX;
  float y = mouseY;
  canvas.fill(255);
  canvas.ellipse(x, y, 50, 50);
  
  canvas.endDraw();
  image(canvas, 0, 0);
  server.sendImage(canvas);
}
