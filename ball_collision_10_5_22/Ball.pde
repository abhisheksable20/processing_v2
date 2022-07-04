class Ball{
  PVector loc;
  PVector vel;
  
  float radius;
  
  Ball(float radius, float x, float y){
    loc = new PVector(x, y);
    vel = PVector.random2D();
    vel.mult(random(1, 5));
    
    
    this.radius = radius;
    
    ellipseMode(RADIUS);
  }
  
  
  void display(){
    fill(255);
    noStroke();
    ellipse(loc.x, loc.y, radius, radius);
  }
  
  void move(){
    loc.add(vel);
  }
  
  void edges(){
    if (loc.x > width-radius){
      loc.x = width-radius;
      vel.x *= -1;
    }
    else if (loc.x < radius){
      loc.x = radius;
      vel.x *= -1;
    }
    
    else if (loc.y > height - radius){
      loc.y = height-radius;
      vel.y *= -1;
    }
    
    else if (loc.y < radius){
      loc.y = radius;
      vel.y *= -1;
    }
   
  }
  
  
  void isCollide(Ball outerBall){
    float dist = PVector.dist(loc, outerBall.loc);
    
    if (dist <= radius + outerBall.radius){
      vel.sub(outerBall.vel);
      outerBall.vel.sub(vel);
      vel.x *= -1;
      vel.y *= -1;
      outerBall.vel.x *= -1;
      outerBall.vel.y *= -1;
      
      vel.limit(10);
      outerBall.vel.limit(10);
    }
    
  }
  
  
}
