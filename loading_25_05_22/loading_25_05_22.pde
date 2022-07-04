LoadingBall b1, b2, b3, b4;

void setup(){
  size(800, 600);
  
  b1 = new LoadingBall(0, 0);
  b2 = new LoadingBall(width, 0);
  b3 = new LoadingBall(width, height);
  b4 = new LoadingBall(0, height);
}

void draw(){
  background(0);
  
  b1.show();
  b2.show();
  b3.show();
  b4.show();
  
}
