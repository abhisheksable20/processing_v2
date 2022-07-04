class Magnet{
  PVector mForce;
  PVector loc;
  float x, y;
  
  Magnet(float x, float y) {
    // Magnet force of an magnet
    mForce = new PVector(2, 0);
    loc=  new PVector(0, height/2);
    
    this.x = x;
    this.y = y;
    
    rectMode(RADIUS);
  }
  
  
  void display() {
    fill(255, 0, 0);
    rect(x, y, 30, 100);
  }
}
