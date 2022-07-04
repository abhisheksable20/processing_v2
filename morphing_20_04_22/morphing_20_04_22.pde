ArrayList<PVector> circle;

ArrayList<PVector> square;

ArrayList<PVector> morph;

boolean state = false;

void setup(){
  size(800, 600);
  circle = new ArrayList();
  square = new ArrayList();
  morph = new ArrayList();
  
  for(int i=0;i<360;i+=9){
    PVector temp = PVector.fromAngle(radians(i-135));
    temp.mult(100);
    circle.add(temp);
    
    morph.add(new PVector());
  }
  
  // Top side of 
  for(int x=-50; x<50; x+=10){
    square.add(new PVector(x,-50));
  }
  
  // Right side
  for(int y=-50;y<50;y+=10){
    square.add(new PVector(50, y));
  }
  
  // Bottom side 
  for(int x=50; x > -50; x-=10){
    square.add(new PVector(x, 50));
  }
  
  // Left side
  for(int y=50; y > -50; y -= 10){
    square.add(new PVector(-50, y));
  }
  
}

void draw(){
  background(#121212);
  stroke(#FFFFFF);
  noFill();
  float totalDist = 0;
  for(int i=0; i < circle.size(); i++){
    PVector v1;
    
    if (state)
      v1 = circle.get(i);
    else
      v1 = square.get(i);
    
    PVector v2 = morph.get(i);
    v2.lerp(v1, 0.1);
    
    totalDist += PVector.dist(v1, v2);
  }
  
  if(totalDist < 0.1)
    state = !state;
  
  translate(width/2,height/2);
  strokeWeight(5);
  beginShape();
  for(int i=0;i<morph.size();i++) {
    vertex(morph.get(i).x, morph.get(i).y);
  }
  endShape(CLOSE);
  
 
}
