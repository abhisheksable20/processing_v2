int rectDist = 0;

void setup(){
  size(480,480);
  noStroke();
}


void draw(){
  float maxDist = dist(0,0,width/2,height/2);
  for(int i=1;i<=height;i=i+5){
    for(int j=1;j<=width;j=j+5){
      println(j);
      float currDist = dist(j,i,mouseX,mouseY);
      float col = map(currDist,0,maxDist,0,255);
      fill(col);
      rect(j,i,5,5);
    }
  }
}


// Rect with gradient from black to white
//void draw(){
//  //background(0,255,0);
//  if(rectDist >= width)
//    noLoop();
//  float col = map(rectDist,0,width,0,255);
//  fill(col);
//  rect(rectDist,height/2,25,25);
//  rectDist += 1;
//}


// Changing background from black in center to white in borders
//void draw(){
//  float dist = dist(width/2,height/2,mouseX,mouseY);
//  float maxDist = dist(0,0,width/2,height/2);
//  float col = map(dist,0,maxDist,0,255);
  
//  background(col);
//}
