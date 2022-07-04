float x, y;

float easing;

float radius;

float dir;

void setup() {
  size(800, 600);
  easing = 0.05;
  radius = 30;
  dir = 1;
  x = 0;
  noStroke();
  ellipseMode(RADIUS);
}

void draw() {
  background(#121212);
  
  // Move ball forward
  if (dir > 0)
    x += (width - x) * easing;
  // Move ball backward
  else if (dir < 0) 
    x += x * easing;  
    
  if (x >= width - 30 || x <= 30){
    dir *= -1;
    easing *= dir;
  }
  
  fill(255);
  ellipse(x,height/2,radius,radius);
  
}
