class Water {
  float start_x;
  float start_y;
  float end_x;
  float end_y;
  
  public Water() {
    start_x = 0;
    start_y = 350;
    end_x = width;
    end_y = height;
    
    rectMode(CORNERS);
  }
  
  
  void display() {
    noStroke();
    fill(212, 241, 249, 100);
    rect(start_x, start_y, end_x, end_y);
  }
  
  
  // Drag force applied upward
  void applyDragForce(Ball ball){
    
    if (!(ball.loc.y > start_y + ball.radius) || ball.isRest)
      return;
    
    
    PVector drag = ball.vel.copy();
    drag.normalize();
    drag.mult(-1);
    float speed = ball.vel.mag();
    drag.mult(0.04 * speed * speed);
    
    
    ball.acc.add(drag);
    
  }
  
  
}
