boolean locked = false;

float x, y;

float radius;

void setup(){
  size(800, 600);
  rectMode(RADIUS);
  x = width / 2;
  y = height / 2;
  radius = 100;
}

void draw(){
  background(#121212);
  
  // Check is mouse inside rect
  if ((mouseX > x-radius && mouseX < x+radius) && (mouseY > y-radius && mouseY < y+radius)){
    locked = true;
    strokeWeight(5);
    stroke(#2fb55a);
  }
  else{
    fill(#FFFFFF);
    locked = false;
    noStroke();
  }
  
  rect(x, y, radius, radius);
  
}


void mouseDragged(){
  if(locked) {
    fill(0);
    x = mouseX;
    y = mouseY;
  }
}
