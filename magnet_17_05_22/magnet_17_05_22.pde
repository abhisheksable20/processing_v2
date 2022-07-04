Magnet m1, m2; 

void setup(){
  size(800, 600);
  m1 = new Magnet(20, height/2);
  m2 = new Magnet(width-20, height/2);
}


void draw(){
  background(0);
  
  // Draw Magent power
  drawPowerBar();
  
  m1.display();
  m2.display();
  
}

void drawPowerBar(){
  stroke(255);
  strokeWeight(5);
  line(20, 550, width - 20, 550);
  
  noStroke();
  fill(#2fb55a);
  float x = constrain(mouseX, 20, width - 20);
  rectMode(RADIUS);
  rect(x, 550, 10, 25);
  
}
