class Attractor {
  PVector loc;
  float mass;
  float gConstant;
  
  Attractor(){
    loc = new PVector(width/2, height/2);
    mass = 10;
    gConstant = 0.1;
  }
  
  
  void display(){
    noStroke();
    fill(255);
    
    ellipse(loc.x, loc.y, 80, 80);
  }
  
  
  PVector attract(Mover m){
    PVector f = PVector.sub(loc, m.loc);
    float dist = f.magSq();
    dist = constrain(dist, 5, 25);
    f.normalize();
    
    float strength = (gConstant * mass * m.mass) / dist;
    
    f.mult(strength);
    
    return f;
    
  }
  
  void move(){
    PVector mouse = new PVector(mouseX, mouseY);
    loc.lerp(mouse, 0.1);
  }
  
  
}
