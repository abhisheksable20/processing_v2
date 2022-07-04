float x, y;
float radius = 100;
float period = 200;

void setup(){
  size(800, 600);
  //background(0);
  y = 0; 
}

void draw(){
  background(0);
  
  fill(255);
 
  translate(width/2, height/2);
  
  x = radius * sin(((frameCount/period) * TWO_PI) + PI/2);
  y = radius * cos(((frameCount/period) * TWO_PI) + PI/2);
 
  
  ellipse(x, y, 40, 40);
  
}
