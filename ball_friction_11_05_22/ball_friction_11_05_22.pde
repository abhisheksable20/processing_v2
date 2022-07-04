PVector loc;
PVector vel;
PVector acc;

float radius;

float mud_width = 100;
float glacier_width = 100;

void setup(){
  size(800, 600);
  ellipseMode(RADIUS);
  radius = 20;
  
  loc = new PVector(20, height/2 - 20);
  
  // Init ball speed will be constant
  vel = new PVector(6, 0);
  acc = new PVector(0, 0);
}

void draw(){
  background(0);
  
  drawShapes();
  
  if (!(vel.x < 0)){
    move();
    force();
  }
  
}

void move(){
  vel.add(acc);
  loc.add(vel);
  acc.mult(0);
}


void force(){
   PVector friction = vel.copy();
   friction.normalize();
   
   // Ball Inside Mud
   if (loc.x >= 250 && loc.x <= 250 + mud_width)
     friction.mult(-0.1);
   
   // Ball Inside Glacier
   else if(loc.x >= 550 && loc.x <= 550 + glacier_width)
     friction.mult(-0.01);
   // Normal Friction
   else{
     friction.mult(-0.01);
   }
   
   acc.add(friction);
   
   // Apply Wind Force
   PVector wind = new PVector(0.001, 0);
   acc.add(wind);
   
}


void drawShapes(){
   noStroke();
   
   // Draw Road
   fill(#47484C);
   rect(0, height/2, width, height/2);
   
   
   // Draw Mud
   fill(#70543E);
   rect(250, height/2, mud_width, height/2);
   
  // Draw Glacier
  fill(#B5E2F4);
  rect(550, height/2, glacier_width, height/2);
  
  // Draw Ball
  fill(255);
  ellipse(loc.x, loc.y, radius, radius);
   
}
