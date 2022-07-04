class Particle{
  PVector loc;
  PVector vel;
  PVector acc;
  
  float prevX;
  float prevY;
  
  int cols;
  
  Particle(int cols){
    loc = new PVector(random(width), random(height));
    vel = PVector.random2D();
    
    update();
    
    acc = new PVector();
    
    this.cols = cols;
  }
  
  void display(){
    stroke(0, 5);
    strokeWeight(2);
    line(prevX, prevY, loc.x, loc.y);
    
    update();
  }
  
  
  void applyForce(PVector force){
    acc.add(force);
  }
  
  void flow(PVector[] vectors){
    int x = floor(loc.x / 20);
    int y = floor(loc.y / 20);
    
    int index = x + y * cols;
    
    if (index >= vectors.length) return;
    
    PVector force = vectors[index];
    
    applyForce(force);
    
  }
  
  void move(){
    vel.add(acc);
    vel.limit(4);
    loc.add(vel);
    acc.mult(0);
  }
  
  
  void update(){
    prevX = loc.x;
    prevY = loc.y;
  }
  
  
  void edge(){
    if(loc.x > width){ 
      loc.x = 0;
      update();
    }  
    if(loc.y > height){ 
      loc.y = 0;
      update();
    }  
    if(loc.x < 0){ 
      loc.x = width;
      update();
    }  
    if(loc.y < 0){ 
      loc.y = height;
      update();
    }  
  }
  
  
  
}
