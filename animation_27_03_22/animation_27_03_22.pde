float xDist,yDist;

float mouseDist;
float rectDist;

void setup(){
  size(640,480);
  xDist = 0;
  yDist = 0;
  
  mouseDist = 0;
  rectDist = 0;
  //background(#121212);
}


//void draw(){
//  background(#121212);
//  mouseDist = (mouseDist+1) % 255;
//  rectDist += 1;
//  fill(mouseDist,mouseDist,mouseDist);
//  stroke(#121212);
//  ellipse(rectDist,height/2,20,20);
//}


//void draw(){
//  mouseDist = 0;
//  rectDist = 0;
//  while(mouseDist <= 255 && rectDist <= width){
//    println("mouseDist: "+mouseDist+" rectDist: "+rectDist);
//    fill(mouseDist,mouseDist,mouseDist);
//    rect(rectDist,0,50,height);
//    mouseDist += 5;
//    rectDist += 12;
//  }

//}


//void draw(){
//  background(#121212);
//  float randomX = random(0,width);
//  float randomY = random(0,height);
//  ellipse(randomX,randomY,20,20);
//}


//void draw(){
//  background(#121212);
//  stroke(#FFFFFF);
//  mouseDist = 0;
//  while(mouseDist < width){
//    if(mouseX <= 0)
//      mouseDist += 10;
//    else
//      mouseDist += mouseX;
         
//    line(mouseDist,0,mouseDist,480);  
//  }
  
//  mouseDist = 0;
//  while(mouseDist < height){
//    if(mouseY <= 0)
//      mouseDist += 10;
//    else
//      mouseDist += mouseY;
      
//    line(0,mouseDist,width,mouseDist);  
//  }
//}


//void draw(){
//  background(#121212);
//  fill(#FFFFFF);
//  mouseDist = 0;
//  while(mouseDist < width){
//    if(mouseX <= 0)
//      mouseDist += 10;
//    else
//      mouseDist += mouseX;
      
//    ellipse(mouseDist, height/2, 20,20);
//  }
//}


//void draw(){
//  background(#121212);
//  stroke(#FFFFFF);
//  xDist = random(10,50);
//  while(xDist < width){
//    line(xDist,0,xDist,height);
//    xDist += 10;
//  }
  
//  yDist = random(10,50);
//  while(yDist < height){
//    line(0,yDist,width,yDist);
//    yDist += 1;
//  }
//}
