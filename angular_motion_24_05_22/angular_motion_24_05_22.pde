float vel;
float acc;
float angle;

void setup(){
  size(800, 600);
  vel = 0.0; 
  acc = 0.0;
  angle = 0;
}


void draw(){
  background(0);
  fill(255);
  noStroke();
  
  acc = map(mouseX, 0, width, -0.0001, 0.0001);
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(angle);
  rect(0, 0, 80, 40);
  popMatrix();
  
  vel += acc;
  angle += vel;
  
}
