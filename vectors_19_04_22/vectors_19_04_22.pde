PVector a, b;

void setup() {
  size(800, 600);
  a = new PVector(0,0);
}

void draw() {
  background(#121212);
  fill(#FFFFFF);
  noStroke();
  
  // This is linear interpolator
  a.lerp(mouseX,mouseY, 0.0, 0.1);
  ellipse(a.x, a.y, 40, 40);
  
  
  // This is another
  //ellipse(a.x, a.y, 100, 100);
  //b = PVector.fromAngle(radians(30));
  //println(b);
}

void mousePressed(){
  a.set(mouseX,mouseY);
}
