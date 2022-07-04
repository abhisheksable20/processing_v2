class Bubble {
  float xSpeed;
  float ySpeed;
  float x;
  float y;
  float diameter;
  color col;
  
  Bubble(float diameter){
    this.diameter = diameter;
    x = random(width);
    y = height;
    col = color(0,255,0,100);
    noStroke();
  }
  
  Bubble(float x, float diameter){
    this.diameter = diameter;
    this.x = x;
    y = height;
    col = color(0,255,0,100);
    noStroke();
  }
  
  void display(){
    fill(col);
    ellipse(x,y,diameter,diameter);
  }
  
  void ascend(){
    y -= random(-1,4);
    x += random(-2,2);
  }
  
  void top(){
    if (y < -diameter/2)
      y = height + diameter;
    
  }
 
  void changeColor(){
     col = color(255);
  }
}
