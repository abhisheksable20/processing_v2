Water water;
Ball[] balls;

void setup(){
  size(800, 600);
  water = new Water();
  balls = new Ball[5];
  
  for (int i = 0; i < balls.length; i++){
    balls[i] = new Ball(random(15, 25));
  }
}


void draw(){
  background(255);
  
  for (int i=0; i<balls.length; i++){
    balls[i].display();
    balls[i].move();
    balls[i].edge();
    balls[i].applyGravity();
    water.applyDragForce(balls[i]);
  }
  
  water.display();
  
}
