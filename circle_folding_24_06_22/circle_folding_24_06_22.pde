float radius = 100;
float angle = 0;
float inc = 0.1;

void setup(){
  size(800, 600);
}


void draw(){
  background(0);
  
  translate(width/2, height/2);
  
  stroke(255);
  strokeWeight(5);
  noFill();
  
  
  
  beginShape();
  
  for (float i=0; i < TWO_PI; i += inc){
    float x = radius * cos(i);
    float y = radius * sin(i);
    vertex(x, y);
  }
  
  endShape(CLOSE);
  
  inc = map(mouseX, 0, width, 0.1, TWO_PI);
 
}
