class Particle{
  float x;
  float y;
  float vx;
  float vy;
  PImage img;
  
  Particle(PImage img) {
    this.img = img;
    float a = random(TWO_PI);
    x = (width/2) + cos(a)*5;
    y = (height/2) + sin(a)*5;
    float speed = random(1,2);
    vx = cos(a)*speed;
    vy = sin(a)*speed;
  }
  
  void show(){
    display();
    reposition();
  }
  
  void display() {
    noStroke();
    color c = img.get(int(x),int(y));
    fill(c);
    ellipse(x,y,12,12);
  }
  
  void reposition() {
    if (x < 0)
      x = width;
    if (x > width)
      x = 0;
    if (y < 0)
      y = height;
    if (y > height)
      y = 0;
      
    x += vx;
    y += vy;
  }
  
}
