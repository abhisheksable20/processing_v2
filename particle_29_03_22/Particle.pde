class Particle {
  float centerX;
  float centerY;
  float diameter;
  color col;
  
  Particle(float centerX,float centerY,float diameter, color col){
    this.centerX = centerX;
    this.centerY = centerY;
    this.diameter = diameter;
    this.col = col;
  }
  
  Particle(float diameter,color col){
    centerX = random(width);
    centerY = random(height);
    this.diameter = diameter;
    this.col = col;
  }
  
  Particle(){
    centerX = random(width);
    centerY = random(height);
    diameter = random(50,100);
    col = color(random(255));
  }
  
  void display(){
    noStroke();
    fill(col);
    ellipse(centerX,centerY,diameter,diameter);
  }
  
  void moveParticle(float x, float y){
    centerX = x;
    centerY = y;
  }
  
  boolean isInsideParticle(Particle p){
    float dist = dist(centerX,centerY,p.centerX,p.centerY);
    return dist < (p.diameter/2) + diameter/2;
  }
 
}
