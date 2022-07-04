class Star{
  float x;
  float y;
  float z;
  
  color col;
  
  Star(){
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    col = color(random(255), random(255), random(255));
    
  }
  
  void update(){
    z = z - 15;
    if (z < 1){
      z = random(width);
      x = random(-width, width);
      y = random(-height, height);
    }
  }
  
  void display(){
    fill(col);
    noStroke();
    
    float sx = map(x/z, 0, 1, 0, width);
    float sy = map(y/z, 0, 1, 0, height);
   
    
    float r = map(z, width, 0, 0, 15);
    
    ellipse(sx, sy, r, r);
   
  }
  
}
