Ball[] balls;

void setup(){
  size(800, 600);
  balls = new Ball[2];
  
  for(int i = 0; i < balls.length; i++){
    balls[i] = new Ball(random(1,50));
  }
}

void draw(){
  background(0);
  
  PVector gravity = new PVector(0, 0.5);
  float wind = random(1, 5);
  for(Ball b : balls){
    b.display();
    b.move();
    b.edges();
    b.applyForce(gravity);
    
    if (mousePressed){
      gravity.x = wind;
      b.applyForce(gravity);
    }
    
     PVector friction = b.vel.copy();
     friction.normalize();
     friction.mult(-0.1);
     
     b.applyForce(friction);
   
  }
  
  
  
}
