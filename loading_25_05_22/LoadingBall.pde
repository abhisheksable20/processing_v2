class LoadingBall{
  PVector end;
  PVector pos;
  PVector center;
  
  boolean flag;
  
  color col;
  
  LoadingBall(float end_x, float end_y){
    end = new PVector(end_x, end_y);
    pos = new PVector(width/2, height/2);
    center = new PVector(width/2, height/2);
    
    col = color(random(255), random(255), random(255));
    
    flag = true;
  }
  
  
  void show(){
    display();
    move();
    edge();
  }
  
  void display(){
    fill(col);
    noStroke();
    ellipse(pos.x, pos.y, 40, 40);
  }
  
  void move(){
    if (flag)
      pos.lerp(end, 0.05);
    else
      pos.lerp(center, 0.05);
  }
  
  void edge(){
    if (flag && PVector.dist(pos, end) <= 100)
      flag = !flag;
    else if (!flag && PVector.dist(pos,center) <= 40){
      flag = !flag;
      col = color(random(255), random(255), random(255));
    }
  }
  
}
