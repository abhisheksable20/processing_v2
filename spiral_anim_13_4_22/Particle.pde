class Particle{
  float a;
  float radius;
  
  Particle(){
    a = 0;
    radius = 10;
  }
  
  void display(){
    noStroke();
    fill(#FFFFFF);
    float x = width/2;
    float y = height/2;
    x += cos(a) * radius;
    y += sin(a) * radius;
    ellipse(x,y,20,20);
    position();
  }

  void position(){
    radius += 1;
    a = (a+1)%360;
  }
  
}
