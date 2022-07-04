int cols, rows;
int slicing = 20;
float zOff = 0;

Particle[] p;
PVector[] flowField;

void setup(){
  size(800, 600);
  
  cols = width / slicing;
  rows = height / slicing;
  
  p = new Particle[100];
  
  flowField = new PVector[rows * cols];
  
  for(int i=0; i < p.length; i++){
    p[i] = new Particle(cols);
  }
  
  background(255);
  
}


void draw(){
  
  float yOff = 0;
  for (int y = 0; y < rows; y++){
    float xOff = 0;
    for (int x = 0; x < cols; x++){
      
      float col = noise(xOff, yOff, zOff) * TWO_PI;
      
      PVector a = PVector.fromAngle(col);
      a.setMag(5);
      
      int index = x + y * cols;
      
      flowField[index] = a;
      
      //stroke(0, 50);
      //strokeWeight(1);
      //pushMatrix();
      //translate(x*slicing, y*slicing);
      //rotate(a.heading());
      //line(0, 0, slicing, 0);
      //popMatrix();
      
      xOff += 0.01;
    }
    
    yOff += 0.01;
    zOff += 0.004;
  }
  
  
  for (Particle pt : p){
      pt.display();
      pt.move();
      pt.edge();
      
      
      pt.flow(flowField);  
  }

}
