float x, y, sX, sY;

float easing, sEasing;

float radius;

void setup() {
  size(800, 600);
  easing = 0.05;
  sEasing = 0.03;
  radius = 40;
  noStroke();
  ellipseMode(RADIUS);
}


void draw() {
  background(#121212);
  
  // Top ellipse
  x += (mouseX - x) * easing;
  y += (mouseY - y) * easing;
  fill(255);
  ellipse(x, y, radius, radius);
  
  // Second ellipse
  sX += (mouseX - sX) * sEasing;
  sY += (mouseY - sY) * sEasing;
  fill(100);
  ellipse(sX, sY + 80, 25, 25);
  
  
}
