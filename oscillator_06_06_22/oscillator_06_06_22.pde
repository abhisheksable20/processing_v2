Oscillator[] os;


void setup(){
  size(800, 600); 
  os = new Oscillator[10];
  for (int i=0; i < os.length; i++){
    float mapAngle = map(i, 0, os.length, 0, TWO_PI);
    os[i] = new Oscillator(random(100, 200), mapAngle);
  }
  
}


void draw(){
  background(0);
  
  for (Oscillator o : os){
    o.display();
    o.cal();
  }
  
}
