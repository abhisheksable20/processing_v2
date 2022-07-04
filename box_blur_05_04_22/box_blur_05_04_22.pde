PImage img;
PImage edgeImg;
float v = 1.0/9.0;
float kernal[][] = {
                    {v, v, v},
                    {v, v, v},
                    {v, v, v},
                   };

float rectSize = 200;
                   
void setup(){
  size(800,600);
  img = loadImage("frog.jpg");
  edgeImg = createImage(800,600,RGB);
  img.loadPixels();
  loadPixels();
  drawImage(); 
}

void draw(){
  drawImage();
  image(edgeImg,0,0);
  int mouseXPos = mouseX;
  int mouseYPos = mouseY;
  if((mouseXPos+200 >= width) || (mouseYPos+200 >= height)) return;
  for(int y=mouseYPos+1;y<mouseYPos+200;y++) {
    for(int x=mouseXPos+1;x<mouseXPos+200;x++) {
      float redSum = 0;
      float greenSum = 0;
      float blueSum = 0;
      for(int ky=-1;ky<=1;ky++){
        for(int kx=-1;kx<=1;kx++){
          int loc = (kx+x)+((ky+y)*img.width);
          float red = red(img.pixels[loc]);
          float green = green(img.pixels[loc]);
          float blue = blue(img.pixels[loc]);
          
          redSum += kernal[ky+1][kx+1] * red;
          greenSum += kernal[ky+1][kx+1] * green;
          blueSum += kernal[ky+1][kx+1] * blue;
        }
      }
      
      edgeImg.pixels[x+(y*img.width)] = color(redSum,greenSum,blueSum);
    }
  }
  
  edgeImg.updatePixels();
  image(edgeImg,0,0);
  stroke(#FFFFFF);
  noFill();
  rect(mouseXPos,mouseYPos,200,200);
}

// Draw full image on to the screen
void drawImage(){
  for(int y=1;y<img.height-1;y++){
    for(int x=1;x<img.width-1;x++){
      int loc = x+(y*img.width);
      edgeImg.pixels[loc] = color(img.pixels[loc]);
    }
  }
  
  edgeImg.updatePixels();
}
