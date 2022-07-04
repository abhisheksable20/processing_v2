PVector origin;
Mover m;
float k = 0.01;
float restLength;

void setup(){
  size(800, 600);
  
  origin = new PVector(width/2, 0);
  m = new Mover(0.99);
  restLength = 300;
}

void draw(){
  background(0);
  
  // Spring Force Calculations
  PVector springForce = PVector.sub(m.loc, origin);
  float cLength = springForce.mag();
  springForce.normalize();
  float stretch = cLength - restLength;
  springForce.mult(-k * stretch);
  
  m.applyForce(springForce);
  
  
  m.update();
  m.display();
  
  drawLine();
  
}

void drawLine(){
  stroke(255);
  strokeWeight(2);
  
  line(origin.x, origin.y, m.loc.x, m.loc.y);
}
