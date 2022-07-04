class Flock{
  PVector loc;
  PVector acc;
  PVector vel;
  int colm;
  float limit;
  float r = 5.0;
  
  Flock(int colm){
    loc = new PVector(random(width), random(height));
    vel = PVector.random2D();
    acc = new PVector(0, 0);
    limit = 2;
    this.colm = colm;
    
  }
  
  void display() {
    fill(255);
    stroke(255);
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(vel.heading());
    beginShape(TRIANGLES);
    vertex(0, 0);
    vertex(-r*3, -r);
    vertex(-r*3, r);
    endShape();
    popMatrix();
  }
  
  void move(){
     vel.add(acc);
     vel.limit(limit);
     loc.add(vel);
     acc.mult(0);
     
  }
  
  void edge(){
    if(loc.x > width)
      loc.x = 0;
    else if (loc.x < 0)
      loc.x = width;
    if (loc.y > height)
      loc.y = 0;
    else if(loc.y < 0)
      loc.y = height;
  }
  
  void applyForce(PVector f){
    acc.add(f);
  }
  
  void flow(PVector[] vectors){
    int x = floor((loc.x / 20));
    int y = floor((loc.y / 20));
    
    int index = x + y * colm;
    
    if (index >= vectors.length)
      return;
    
    PVector f = vectors[index];
    
    applyForce(f);
    
  }
  
  
  void setVelLimit(float limit){
    this.limit = limit;
  }
  
}
