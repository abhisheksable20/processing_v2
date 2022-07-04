float r = 30;
PVector loc;
PVector force;
float angle;

float speed = 0;

float px, py;


void setup(){
  size(800, 600);
  
  loc = new PVector(width/2, height/2);
  force = new PVector(1, speed);
  angle = 0;
  
  px = mouseX;
  py = mouseY;
}


void applyForce(){
  force.y = speed;
  angle = force.heading();
  loc.add(force);
}


void headTowardsMouse(){
  PVector mouse = new PVector(mouseX, mouseY);
  force = PVector.sub(mouse, loc);
  force.normalize();
  force.mult(2);
  
}



void draw(){
  background(0);
  
  //headTowardsMouse();
  applyForce();
  
  translate(loc.x, loc.y);
  rotate(angle);
  beginShape(TRIANGLES);
  vertex(r, 0);
  vertex(-r, -r/2);
  vertex(-r, r/2);
  endShape();
  
}


//void mouseMoved(){
//  if (py - mouseY > 0)
//    speed -= 0.5;
//  else
//    speed += 0.5;
    
//  py = mouseY;  
//}
