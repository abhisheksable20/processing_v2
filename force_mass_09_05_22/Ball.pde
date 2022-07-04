class Ball {
  
  PVector loc;
  PVector acc;
  PVector vel;
  
  float mass;
  
  float radius;
  
  public Ball(float mass) { 
    this.mass = mass;
    loc = new PVector(random(20, width - 20), radius/2);
    acc = new PVector(0, 0);
    vel = new PVector(0, 0);
    radius = mass * 2;
  }
  
  void display(){
    noStroke();
    fill(255);
    ellipse(loc.x, loc.y, radius, radius);
  }
  
  void applyForce(PVector force){
    PVector f = PVector.div(force, mass);
    acc.add(f);
  }
  
  void move(){
    vel.add(acc);
    loc.add(vel);
    acc.mult(0);
  }
  
  void edge(){
    if (loc.y + (radius/2) > height){
      loc.y = height - (radius/2);
      vel.y *= -1;
    }
    
    if (loc.y - (radius/2) < 0){
      loc.y = (radius/2);
      vel.y *= -1;
    }
    
  }
  
}
