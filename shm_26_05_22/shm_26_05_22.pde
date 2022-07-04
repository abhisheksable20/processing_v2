float mean;
float x, y;
float vel;
float acc;
float k = 0.001;

void setup(){
  size(800, 600);
  
  mean = width / 2;
  vel = 0;
  acc = -1;
  
  x = width;
  y = height/2;
}


void draw(){
  background(0);
  
  
  textSize(15);
  text(vel, width/2, 100);
  
  
  fill(255);
  ellipse(x, y, 40, 40);
  
  vel += acc;
  x += vel;
  
  float dist = x - mean;
  
  acc = dist * k * -1;
  
}
