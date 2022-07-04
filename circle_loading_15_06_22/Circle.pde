class Circle{
  float speed;
  color col;
  float radius;
  
  float cx, cy;
  
  float threshold;
  
  
  Circle(float speed, color col, float radius){
    this.speed = speed;
    this.col = col;
    this.radius = radius;
    
    cx = width/2;
    cy = height/2;
    
    threshold = radius*2;
    
    ellipseMode(RADIUS);
  }
  
  
  void show(){
    display();
    move();
    edge();
  }
  
  void display(){
    noStroke();
    fill(col);
    ellipse(cx, cy, radius, radius);
  }
  
  void move(){
    radius += speed;
  }
  
  void edge(){
    if (radius > threshold){
      speed *= -1;
      println("Radius: "+radius);
    }  
    else if(radius < ((threshold/2)/2)){
      speed *= -1;
      println("Radius: "+radius);
    }  
  }
  
}
