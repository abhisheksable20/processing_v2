//Mouse Event Draw Line
//Get Current mouseX and mouseY position using (mouseX,mouseY)
//Get Previous mouseX and mouseY position using (mouseX,mouseY)

//void setup(){
//   size(640,480);
//   background(#121212);
//}


//void draw(){
//  stroke(#FFFFFF);
//  line(pmouseX,pmouseY,mouseX,mouseY);
//}


// Mouse event move Rect across screen
//void setup(){
//  size(640,480);
//}

//void draw(){
//  background(#121212);
//  rect(mouseX-50,mouseY-50,100,100);
//  //rect(mouseX,mouseY,100,100);
//}


// Mouse press event
// To check is mouse button is clicked use mousePressed() method
void setup(){
  size(640,480);
  background(#121212);
}

void draw(){
  stroke(#FFFFFF);
  line(pmouseX,pmouseY,mouseX,mouseY);
}

void mousePressed(){
  background(#121212);
}

void keyPressed(){
  background(0,255,0);
}
