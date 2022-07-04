Attractor a;
Mover[] ms;

void setup(){
  size(800, 600);
  
  a = new Attractor();
  ms = new Mover[2];
  
  for (int i=0; i<ms.length; i++){
    ms[i] = new Mover();
  }
  
}


void draw(){
  background(0);
  
  a.display();
  //a.move();
  
  for (int i=0; i<ms.length; i++){
    ms[i].display();
    ms[i].move();
  
    ms[i].applyForce(a.attract(ms[i]));
  }  
}
