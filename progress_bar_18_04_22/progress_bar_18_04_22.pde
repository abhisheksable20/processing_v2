void setup(){
  size(800, 600);
}

void draw(){
  background(#121212);
  noFill();
  strokeWeight(10);
  stroke(#FFFFFF);
  float deg = map(mouseX, 0, width, 0, 360);
  float radian_end = deg * (PI/180);
  arc(width/2, height/2, 100, 100, 0, radian_end); 
  
}
