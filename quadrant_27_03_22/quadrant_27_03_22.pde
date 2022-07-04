void setup(){
  size(640,480);
}

void draw(){
   background(#121212);
   println("MouseX: "+mouseX+" MouseY: "+mouseY);
   // 1st Quadrant
   if ((mouseX >= 0 && mouseX <= width/2)  &&  (mouseY >= 0 && mouseY <= height/2)){
     fill(255,0,0);
     rect(0,0,width/2,height/2);
   }
   // 2nd Quadrant
   else if ((mouseX >= width/2 && mouseX <= width) && (mouseY >=0 && mouseY <= height/2)){
     fill(0,255,0);
     rect(width/2,0,width/2,height/2);
   }
   // 3rd Quadrant
   else if ((mouseX >= 0 && mouseX <= width/2) && (mouseY >= height/2 && mouseY <= height)){
     fill(0,0,255);
     rect(0,height/2,width/2,height/2);
   }
   // 4rth Quadrant
   else if ((mouseX >= width/2 && mouseX <= width) && (mouseY >= height/2 && mouseY <= height)){
     fill(#2fb55a);
     rect(width/2,height/2,width/2,height/2);
   }
   
   // Drawing Quadrant lines
   stroke(#FFFFFF);
   line(width/2,0,width/2,height);
   line(0,height/2,width,height/2);
   
}
