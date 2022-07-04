void setup(){
  size(640,480);
  stroke(#FFFFFF);
  noFill();
}

void draw(){
  background(#121212);
  strokeWeight(5);
  drawCurve();
  strokeWeight(1);
  drawCenterLine();
}

void drawCurve(){
  float startControlPointX = (width/2) - 50;
  float startControlPointY = (height/2);
  float startPointX = startControlPointX;
  float startPointY = (height/2) - 100;
  float endPointX = (width/2) + 50;
  float endPointY = startPointY;
  float endControlPointX = endPointX;
  float endControlPointY = startControlPointY;
  
  curve(startControlPointX,startControlPointY,
  startPointX,startPointY,
  endPointX,endPointY,
  endControlPointX,endControlPointY);
 
}

void drawCenterLine(){
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
}

void mouseMoved(){
  println("MouseX: "+mouseX+" MouseY: "+mouseY);
}
