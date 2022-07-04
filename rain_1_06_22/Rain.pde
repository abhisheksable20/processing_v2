class Rain {
  PVector pos;
  PVector vel;
  PVector acc;
  
  PVector current;
  
  PVector block;
  
  PVector sparkle;
  
  boolean isCollide;
  
  Rain(){
    pos = new PVector(random(width), random(0, 100));
    vel = new PVector(0, 0);
    acc = new PVector(0, random(1, 5));
    sparkle = new PVector(13, 0);
    current = new PVector(0, 0);
    
    isCollide = false;
    
    block = new PVector(random(50, width-50), random(height/2, height));
    
  }
  
  void display(){
    if (isCollide)
      collideAnim();
    else{
      stroke(255);
      strokeWeight(2);
      line(pos.x, pos.y, pos.x, pos.y + 25);
    }
  }
  
  void collideAnim(){
     strokeWeight(1);
     stroke(255);
     current.lerp(sparkle, 0.6);
      
     if(PVector.dist(current,sparkle) <= 0.1)
       isCollide = false;
      
     pushMatrix();
     translate(pos.x + 10, block.y);
     rotate(radians(-60));
     line(0, 0, current.x, current.y);
     popMatrix();
      
     pushMatrix();
     translate(pos.x - 10, block.y);
     rotate(radians(-120));
     line(0, 0, current.x, current.y);
     popMatrix();
  }
  
  
  void move(){
    vel.add(acc);
    pos.add(vel);
    //acc.mult(0);
  }

  void edge(){
    if (pos.y + 10 >= block.y){
      pos.y = height;
      isCollide = true;
      pos.y = 0-50; 
      vel.mult(0);
      acc.mult(0);
    }  
  }
  
}
