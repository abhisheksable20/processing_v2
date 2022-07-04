PImage img;

float incRadii = 0;

float ellipseRadii = 30;

void setup(){
  size(800,600);
  noStroke();
  img = loadImage("frog.jpg");
  img.loadPixels();
}

void draw(){
  for(int i=0;i<500;i++){
    float theta = random(360);
    float x = incRadii*cos(theta)+(width/2);
    float y = incRadii*sin(theta)+(height/2);
    color col = img.get(int(x),int(y));
    fill(col);
    ellipse(x,y,ellipseRadii,ellipseRadii);
  }
  
  if (incRadii < width && incRadii < height)
    incRadii += 2;
   
}
