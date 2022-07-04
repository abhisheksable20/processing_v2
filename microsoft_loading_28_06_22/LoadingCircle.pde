class LoadingCircle{
  float mid, r;
  float x, y;
  float easing;
  
  color col;
  
  LoadingCircle(float x_){
    x = x_;
    y = height/2;
    r = 10;
    easing = 0.01;
    
    mid = width/2;
    
    col = color(random(255), random(255), random(255), 150);
    
    ellipseMode(RADIUS);
    
  }
  
  void display(){
    fill(col);
    noStroke();
    ellipse(x, y, r, r);
  }
  
  void calculate(){
    float speed = (mid - x) * easing;
    x += speed;
    
    if (x == mid || (x > mid - 10 && x < mid))
      mid = width;
  }
 
  
  
}
