Ball[] balls;

void setup(){
  size(800, 600);
  balls = new Ball[2];
  
  for(int i = 0; i < balls.length; i++){
    balls[i] = new Ball(random(10, 50));
  }
  
}

void draw(){
  background(0);
  
  PVector force = new PVector(0, 1);
  
  for(int i=0; i<balls.length; i++){
    balls[i].applyForce(force);
    balls[i].display();
    balls[i].move();
    balls[i].edge();
  }
}

//void path(){
//  stroke(255, 0, 0);
//  strokeWeight(5);
//  line(0, height/2, width, height/2);
//}
