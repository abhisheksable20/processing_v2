PVector loc, vel;

float gravity = 0.1;
float force = 0.01;

float angle = radians(60);

void setup(){
  size(800, 600);
  loc = new PVector(0, 0);
  vel = new PVector(0, 0);
}


void draw(){
  background(0);
  
  float acc = gravity/sin(angle);
  vel.x = vel.x + acc;
  vel.y = vel.y + acc;
  
  loc.add(vel);
  
  
  noStroke();
  fill(255);
  ellipse(loc.x, loc.y, 40, 40); 
   
}
