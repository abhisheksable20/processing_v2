class Mover {
  PVector loc;
  PVector force;
  float mass;
  
  color c;
  
  Mover() {
    loc = new PVector(random(width), random(height));
    // Default force
    force = new PVector(10, 0);
    mass = 10;
    
    c = color(random(255), random(255), random(255));
  }
  
  void display() {
    fill(c);
    ellipse(loc.x, loc.y, 20, 20);
  }
  
  void move(){
    loc.add(force);
  }
  
  void applyForce(PVector f){
    force.add(f);
    //force.limit(10);
  }
 
}
