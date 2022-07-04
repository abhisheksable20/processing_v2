Pendulum p1;
boolean pressed;

void setup(){
  size(800, 600);
  
  p1 = new Pendulum(new PVector(width/2, 0), 250);
  
  pressed = false;
  
}


void draw(){
  background(0);
  p1.go();
}

void mousePressed() {
  if (!p1.dragging){
    if((mouseX < p1.blob.x + 20 && mouseX > p1.blob.x - 20) 
    && (mouseY < p1.blob.y + 20 && mouseY > p1.blob.y - 20)){
      p1.dragging = true; 
    }
  }
  
}

void mouseDragged(){
  if(p1.dragging)
    p1.drag(mouseX,mouseY);
}


void mouseReleased(){
  p1.dragging = !p1.dragging;
  p1.start(mouseX,mouseY);
}
