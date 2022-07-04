PImage img;
Particle[] p;

void setup(){
  size(800,600);
  img = loadImage("frog.jpg");
  img.loadPixels();
  p = new Particle[1000];
  for(int i=0;i<p.length;i++)
    p[i] = new Particle(img);
}

void draw(){
  //background(#121212);
  for(int i=0;i<p.length;i++)
    p[i].show();
}
