float angle = PI / 4;
float xOff = 0;

void setup(){
  size(800, 600);
}

void draw(){
  background(0);
  stroke(255);
  strokeWeight(3);
  
  float wind = map(noise(xOff), 0, 1, TWO_PI, PI);
  
  translate(width/2, height);
  tree(100, wind);
  
  xOff += 0.009;
}

void tree(float n, float noise){
  beginShape(LINES);
  vertex(0, 0);
  vertex(0, -n);
  translate(0, -n);
  endShape();
  
  if (n > 4){
    pushMatrix();
    rotate(angle);
    tree(n * 0.67, noise);
    popMatrix();
    pushMatrix();
    rotate(-angle);
    tree(n * 0.67, noise);
    popMatrix();
  }
 
}


void mouseMoved(){
  angle = map(mouseX, 0, width, TWO_PI, PI);
}
