Triangle tri;
boolean isLooping = true;

void setup(){
  size(640,480);
  tri = new Triangle(width/2,height/2);
}

void draw(){
  background(#121212);
  tri.display();
}

void mouseMoved(){
  tri.changePosition(mouseX,mouseY);
}

void mousePressed(){
  if(isLooping){
    tri.changeColor(#2fb55a); 
    draw();
    noLoop();
  }
  else{
    tri.changeColor(#FFFFFF);
    loop();
  }
  
  isLooping = !isLooping;  
}
