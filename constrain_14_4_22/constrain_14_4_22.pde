float x, y;
float radius;
float easing;
float edge;
float inner;

void setup() {
  size(800, 600);
  edge = 100;
  radius = 40;
  inner = edge + radius;
  easing = 0.05;
  noStroke();
  rectMode(CORNERS);
  ellipseMode(RADIUS);
}

void draw() {
  background(51);
  
  x = x + (mouseX - x) * easing;
  y = y + (mouseY - y) * easing;
  
  x = constrain(x,inner,width - inner);
  y = constrain(y,inner,height - inner);
  
  // Setting shapes
  fill(76);
  rect(edge, edge, width-edge, height-edge);
  fill(255);
  ellipse(x, y, radius, radius);
}
