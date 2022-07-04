Particle[] p;

void setup(){
  size(800, 600);
  background(#121212);
  p = new Particle[360];
  for(int i=0;i<p.length;i++)
    p[i] = new Particle();
}

void draw(){
  //background(#121212);
  for(int i=0;i<p.length;i++)
    p[i].display();
}
