float radius = 100;
float yoffset = 1000;
void setup(){
  size(800, 600);
}

void draw(){
  background(#121212);
  stroke(255);
  noFill();
  pushMatrix();
  translate(width/2, height/2);
  beginShape();
  float xoffset = 0;
  for(int i = 0; i <= 350; i++){
    float offset = noise(xoffset,yoffset);
    float mapped = map(offset, 0, 1, 100, 200);
    float x = mapped * cos(radians(i));
    float y = mapped * sin(radians(i));
    
    vertex(x, y);
    xoffset += 0.01;
  }
  
  endShape(CLOSE);
  popMatrix();
  
  yoffset += 0.01;
  
}
