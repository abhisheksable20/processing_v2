size(640,480);
int centerX = 640/2;
int centerY = 480/2;

//line(centerX,0,centerX,480);

int topLeftX = centerX - 100;
int topRightX = centerX + 100;

int bottomLeftX = centerX - 200;
int bottomRightX = centerX + 200;

line(topLeftX,50,bottomLeftX,100);
line(topRightX,50,bottomRightX,100);

float leftCenter = (topLeftX+bottomLeftX)/2;
float rightCenter = (topRightX+bottomRightX)/2;

ellipse(leftCenter+15,120,40,40);
ellipse(rightCenter-15,120,40,40);

rect(leftCenter,centerY,rightCenter-leftCenter,50);
