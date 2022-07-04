Mover m;

void setup(){
  size(800, 600);
  m = new Mover();
}

void draw(){
  background(0);
  
  PVector gravity = new PVector(0, 1);
  
  m.applyForce(gravity);
  m.display();
  m.move();
  m.edge();
  
}

void mousePressed(){
  PVector wind = new PVector(2, 0);
  m.applyForce(wind);
}
