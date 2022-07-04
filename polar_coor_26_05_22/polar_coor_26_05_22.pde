float a = 0.0;
float radius = 150;
float vel = 0;
float acc = 0.001;

float x_offset = 0;

void setup(){
  size(800, 600);
  //background(0);
}

void draw(){
  background(0);  
  
  float x = (width/2) + (radius * cos(a));
  float y = (height/2) + (radius * sin(a));
  
  float temp = (a + vel) % TWO_PI;
  
  color c = color(map(temp, 0, TWO_PI, 0, 255));
  
  noStroke();
  fill(c);
  ellipse(x, y, 40, 40);
  stroke(255);
  line(width/2, height/2, x, y);
  
  a += vel;
  vel += acc;
  
  vel = constrain(vel, 0, 0.1);
  
}
