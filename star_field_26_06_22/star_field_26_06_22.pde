Star[] stars;

void setup(){
  size(800, 600);
  
  stars = new Star[400];
  
  for(int i=0; i<stars.length; i++)
    stars[i] = new Star();  
     
  
}


void draw(){
  background(0);
  
  translate(width/2, height/2);
  
  for(Star s:stars){
    s.update();
    s.display();
  }
}
