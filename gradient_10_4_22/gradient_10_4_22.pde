float gradX = 1;
float gradY = 1;

float xSpeed = 1;
float ySpeed = 1;

void setup(){
  size(600,600);
  loadPixels();
}

void draw(){
   float maxDist = dist(0,0,gradX,gradY); 
   for(int y=0;y<height;y++){
     for(int x=0;x<width;x++){
       int loc = x+(y*width);
       float currDist = dist(x,y,gradX,gradY);
       float mappedCol = map(currDist,0,maxDist,0,255);
       pixels[loc] = color(mappedCol);
     }
   }
   
   if (gradX >= width || gradX <= 0)
     xSpeed *= -1;
   
   if(gradY >= height || gradY <= 0)
     ySpeed *= -1;
   
   gradX += xSpeed;  
   gradY += ySpeed;
   
   updatePixels();
}
