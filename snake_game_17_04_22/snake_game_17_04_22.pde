ArrayList<Integer> x, y;

int[] xDirection, yDirection;

float blockSize = 20;

int direction;

void setup(){
   size(800, 600);
   x = new ArrayList();
   y = new ArrayList();
   xDirection = new int[]{0, 1, 0, -1};
   yDirection = new int[]{-1, 0, 1, 0};
   direction = 1;
   x.add(0);
   y.add(15);
   noStroke();
}

void draw(){
  background(#121212);
  fill(#FFFFFF);
  
  for(int i=0;i<x.size();i++) {
    rect(x.get(i)*blockSize, y.get(i)*blockSize, blockSize, blockSize);
  }
     
  if(frameCount % 5 == 0) {
    x.add(0, x.get(0) + xDirection[direction]);  
    y.add(0, y.get(0) + yDirection[direction]);
  
    x.remove(x.size()-1);
    y.remove(y.size()-1);
  }

}

void isInBorder(){
  for(int i=0;i<x.size();i++){
    
  }
}

void mousePressed(){
  x.add(0, x.get(0) + xDirection[direction]);
  y.add(0, y.get(0) + yDirection[direction]);
}

void keyPressed(){
   direction = key=='w' ? 0:
              (key=='d' ? 1:
              (key=='s' ? 2:
              (key=='a' ? 3: -1)));
              
  if(direction == -1)
    exit();
}
