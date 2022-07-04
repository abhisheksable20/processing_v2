class Ball{
  PVector loc;
  PVector vel;
  PVector acc;
  
  float mass;
  
  float radius;
  
  Ball(float mass){
    loc = new PVector(random(width), 50);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    
    this.mass = mass;
    
    radius = (mass * 2) / 2;
    
  }
  
  void display(){
    fill(255);
    noStroke();
    ellipse(loc.x, loc.y, mass * 2, mass * 2);
  }
  
  
  void applyForce(PVector force){
    PVector f = PVector.div(force, mass);
    f.y *= mass; 
    acc.add(f);
  }
  

  void move(){
    vel.add(acc);
    loc.add(vel);
    acc.mult(0);
  }
  
  void edges(){
    if (loc.x > width - radius){
      loc.x = width - radius;
      vel.x *= -1; 
    }
    
    else if (loc.x < radius){
      loc.x = radius;
      vel.x *= -1;
    }
    
    else if (loc.y > height - radius){
      loc.y = height - radius;
      vel.y *= -1; 
    }
    
    else if (loc.y < radius){
      loc.y = radius;
      vel.y *= -1;
    }
    
  }
  
  
}
