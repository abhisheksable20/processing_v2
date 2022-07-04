Particle p1;
Particle p2;

void setup(){
  size(640,480);
  p1 = new Particle(width/2,height/2,100,color(255));
  p2 = new Particle(50,color(255));
}

void draw(){
  background(#121212);
  p1.display();
  p2.display();
  
  setColor();
  
}

void setColor(){
  if (p1.isInsideParticle(p2)){
    p1.col = color(255,0,0,100);
    p2.col = color(0,0,255);
  }
  else{
    p1.col = color(255);
    p2.col = color(255);
  }
}


void mouseMoved(){
  p1.moveParticle(mouseX,mouseY);
}
