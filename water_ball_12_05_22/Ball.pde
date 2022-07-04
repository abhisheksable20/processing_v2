class Ball {
  PVector loc;
  PVector vel;
  PVector acc;
  
  float mass;
  float radius;
  
  boolean isRest = false;
  
  public Ball(float mass){
    this.mass = mass;
    this.radius = mass;
    
    loc = new PVector(random(radius, width - radius), radius);
    vel = new PVector(0, 0);
    PVector force = new PVector(0, 6);
    force.div(mass);
    acc = force;
    
    ellipseMode(RADIUS);
  }
  
  void display(){
    fill(255, 0, 0);
    ellipse(loc.x, loc.y, radius, radius);
  }
  
  
  void move(){
    vel.add(acc);
    loc.add(vel);
    acc.mult(0);
  }
  
  
  void applyGravity(){
    PVector force = new PVector(0, 0.01);
    //PVector gravity = PVector.div(force, mass);
    force.mult(mass);
    acc.add(force);
  }
  
  void edge(){
    if (loc.y >= height - radius){
      isRest = true;
      loc.y = height - radius;
    }
  }
  
  
}
