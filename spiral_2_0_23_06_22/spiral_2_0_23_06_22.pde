float radius = 200;
float angle = 0;

void setup(){
  size(800, 600);
  ellipseMode(RADIUS);
  
  background(0);
}


void draw(){
  //background(0);
  
  //stroke(255);
  //strokeWeight(5);
  
  
  translate(width/2, height/2);
  noFill();
  //ellipse(0, 0, 100, 100);
  
  float x = radius * cos(angle);
  float y = radius * sin(angle);
  
  fill(0, 255, 0);
  noStroke();
  ellipse(x, y, 5, 5);
  
  
  angle -= 0.01;
  if (radius >= 0)
    radius -= 0.05;
  
}
