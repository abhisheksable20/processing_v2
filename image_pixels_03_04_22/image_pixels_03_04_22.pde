PImage img;
float maxDist;

void setup(){
  size(800,600);
  img = loadImage("frog.jpg");
  maxDist = dist(0,0,width/2,height/2);
  // Calling window loadPixels
  loadPixels();
  // Calling image loadPixels
  img.loadPixels();
}


// Torch
void draw(){
  for(int x=0;x<width;x++){
    for(int y=0;y<height;y++){
      color col = img.get(x,y);
      int index = x+(y*width);
      float r = red(col);
      float g = green(col);
      float b = blue(col);
      float d = dist(mouseX,mouseY,x,y);
      float factor = map(d,0,100,2,0);
      pixels[index] = color(r*factor,g*factor,b*factor);
    }
  }
  
  updatePixels();
}


// Greyscale image
//void draw(){
//  for(int x=0;x<width;x++){
//    for(int y=0;y<height;y++){
//      int loc = x+(y*width);
//      float r = red(img.pixels[loc]);
//      float g = green(img.pixels[loc]);
//      float b = blue(img.pixels[loc]);
//      float average = (r+g+b)/3;
//      pixels[loc] = color(average);
//    }
//  }
  
//  updatePixels();
//}


// Show only green
//void draw(){
//  for(int x=0;x<width;x++){
//    for(int y=0;y<height;y++){
//      int loc = x+(y*width);
//      float r = red(img.pixels[loc]);
//      float g = green(img.pixels[loc]);
//      float b = blue(img.pixels[loc]);
      
//      if(g > 100){
//        pixels[loc] = color(r,g,b);
//      }
//    }
//  }
  
//  updatePixels();
//}


// Grey using mouse
//void draw(){
//  for(int x=0;x<width;x++){
//    for(int y=0;y<height;y++){
//      int loc = x + (y * width);
//      float r = red(img.pixels[loc]);
//      float g = green(img.pixels[loc]);
//      float b = blue(img.pixels[loc]);
      
//      float avg = (r+b)/2;
//      if (g > 100 || b > 100)
//        pixels[loc] = color(avg);
//      else
//        pixels[loc] = color(r/2,g/2,b/2);
//    }
//  }
  
//  updatePixels();
//}

// Green To Red
//void draw(){
//  for(int x=0;x<width;x++){
//    for(int y=0;y<height;y++){
//      int loc = x+(y*width);
//      float r = red(img.pixels[loc]);
//      float g = green(img.pixels[loc]);
//      float b = blue(img.pixels[loc]);
      
//      if(r-g < 0){
//        float plus = g-r;
//        pixels[loc] = color(r+plus,0,0);
//      }
//      else
//        pixels[loc] = color((r+g+b)/3);
//    }
//  }
  
//  updatePixels();
//}


// Blur the image
// Theory:- Take the neighbouring pixels top left right bottom average them by 4
//float v = 1.0/9.0;
//float[][] kernal = {
//                    {v,v,v},
//                    {v,v,v},
//                    {v,v,v}
//                   };
                   
//void draw(){
//  for(int y=1;y<img.height-1;y++){
//    for(int x=1;x<img.width-1;x++){
//      float sum=0;
//      for(int ky=-1;ky<=1;ky++){
//        for(int kx=-1;kx<=1;kx++){
//          int loc = (x+kx)+((ky+y)*img.width);
//          float col = img.pixels[loc];
//          sum += kernal[ky+1][kx+1] * col;
//        }
//      }
//      println(sum);
//      pixels[x+(y*width)] = color(sum);
//    }
//  }
  
  //updatePixels();
//}                   





 
