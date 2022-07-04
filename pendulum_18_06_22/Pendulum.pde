class Pendulum{
  PVector origin;
  float r;
  float angle;
  float damping = 0.995;
  
  PVector blob;
  
  float vel;
  
  boolean dragging;
  
  Pendulum(PVector origin_, float r_){
    origin = origin_;
    r = r_;
    
    angle = PI/4;
    
    dragging = false;
    
    blob = new PVector(r * sin(angle), r * cos(angle));
    
  }
  
  
  void go(){
    if (!dragging)
      update();
      
    display();
  }
  
  void update(){
    float gravity = 1;
    
    float acc = (-1 * gravity / r) * sin(angle);
    vel += acc;
    vel *= damping;
    
    angle += vel;
    
    blob.set(r * sin(angle), r * cos(angle));
    blob.add(origin);
  }
  
  
  void display(){
    strokeWeight(2);
    stroke(255);
    line(origin.x, origin.y, blob.x, blob.y);
    noStroke();
    
    if(dragging)
      fill(200);
    else
      fill(255);
    
    ellipse(blob.x, blob.y, 40, 40);
    
  }
  
  void drag(float x, float y){
    blob.set(x, y);
  }
  
  void start(float x, float y){
    float mean = width/2;
    x = x - mean;
    
    angle = atan(x/y);
    r = x / sin(angle);
    blob.set(r * sin(angle), r * cos(angle));
  }
  
}
