class Drop {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float maxDist;
  float topY;
  
  // Initializing default position   
  Drop() {
    this.x = width/2;
    //this.x = random(0,width);
    y = 50;
    ySpeed = -1;
    xSpeed = random(-1,1);
    topY = 30;
    maxDist = dist(this.x,topY,this.x,height);
    noStroke();
  }
  
  void showDrop(){
    display();
    fallCalculation();
  }
  
  void display(){
    fill(getColor());
    ellipse(x,y,20,20);
  }
  
  // Calculating drop falling x,y coordinates
  void fallCalculation() {
    if (y <= topY)
      ySpeed *= -1;
    else {
      if (ySpeed < 0)
        ySpeed = random(-1,-5);
      else
        ySpeed = random(1,5);
    }  
      
    x += xSpeed;  
    y += ySpeed;
  }
  
  float getY(){
    return y;
  }
  
  color getColor(){
    float currDist = dist(x,topY,x,y);
    float col = map(currDist,topY,height,255,0);
    color dropCol = color(col);
    return dropCol;
  }
  
}
