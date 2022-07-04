LoadingCircle[] lc;

void setup(){
  size(800, 600);
  
  lc = new LoadingCircle[4];
  
  float dist = 200;
  
  for (int i = 40; i > 0; i = i-10){
    int index = ((i/10) % 10) - 1;
    lc[index] = new LoadingCircle(dist);
    
    dist -= 60;
  }  
 
}

void draw(){
  background(255);
  
  for (int i=0; i<lc.length;i++){
    lc[i].display();
    lc[i].calculate();
  }
  
}
