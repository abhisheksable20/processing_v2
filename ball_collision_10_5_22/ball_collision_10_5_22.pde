Ball ball1;
Ball ball2;

void setup(){
  size(600, 600);
  
  ball1 = new Ball(50, 50, random(height - 50));
  ball2 = new Ball(25, 25, random(height) - 25);
}


void draw(){
  background(0);
  
  ball1.display();
  ball1.move();
  ball1.edges();
  
  ball2.display();
  ball2.move();
  ball2.edges();
  
  ball1.isCollide(ball2);
  
}
