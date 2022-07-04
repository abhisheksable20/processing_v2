class Mover{
  PVector loc;
  PVector vel;
  PVector restLength;
  
  float k = 0.1;
  float damping;
  
  Mover(float damping){
    restLength = new PVector(width/2, height/2);
    loc = new PVector(restLength.x, 500);
    vel = new PVector(0, 0);
    
    this.damping = damping;
  }
  
  
  void display(){
    fill(255);
    noStroke();
    ellipse(loc.x, loc.y, 40, 40);
  }
  
  void applyForce(PVector spring){
    vel.add(spring);
  }
  
  void update(){
    loc.add(vel);
    vel.mult(damping);
  }
  
}
