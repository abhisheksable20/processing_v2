Flock[] fl;

int interval = 20;

PVector[] flowFields;

int rows, colm;

void setup(){
  size(800, 600);
  rows = height / interval;
  colm = width / interval;
  
  flowFields = new PVector[rows * colm];
  fl = new Flock[100];
  
  float yOff = 0;
  for (int y = 0; y < rows; y++){
    float xOff = 0;
    for (int x = 0; x < colm; x++){
      float angle = map(noise(xOff, yOff), 0, 1, -(PI/2), PI/2);
      PVector p = PVector.fromAngle(angle);
      p.setMag(1);
      
      int index = x + y * colm;
      
      flowFields[index] = p;
      
      xOff += 0.01;
    }
    
    yOff += 0.01;
  }
  
  // Init flock
  for(int i = 0; i < fl.length; i++){
    fl[i] = new Flock(colm);
  }  
   
}
  
void draw() {
   background(0);
  
   // Draw Flow Field
   drawField();
   
   // Draw Flocks
   for (Flock f : fl){
     f.display();
     f.move();
     f.edge();
     
     f.flow(flowFields);
     
     float speed = map(mouseX, 0, width, 2, 10);
     f.setVelLimit(speed);
     
   }
   
}

void drawField(){
  for (int y = 0; y < rows; y++){
    for (int x = 0; x < colm; x++){
      int index = x + y * colm;
      PVector temp  = flowFields[index];
      
      pushMatrix();
      translate(x * interval, y * interval);
      rotate(temp.heading());
      stroke(255, 100);
      strokeWeight(1);
      line(0, 0, interval, 0);
      popMatrix();
    }
  }
}
