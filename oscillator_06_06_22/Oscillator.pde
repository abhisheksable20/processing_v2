class Oscillator{
  
  float period;
  
  final float amp = width / 4;
  
  float angle;
  
  float x, y;
  
  public Oscillator(float period, float angle){
    this.period = period;
    this.angle = angle;
  }
  
  void display(){
    pushMatrix();
    noStroke();
    fill(255);
    translate(width/2, height/2);
    rotate(angle);
    ellipse(x, y, 40, 40);
    stroke(255);
    line(0, 0, x, y);
    popMatrix();
  }
  
  void cal(){
    x = amp * sin((frameCount / period) * TWO_PI);
    y = amp * sin((frameCount / period) * TWO_PI);
  }
  
  
}
