size(640,480);

int centerX = 640/2;
int centerY = 480/2;

line(centerX,0,centerX,480);

fill(127,127,127);
// Alien Body
int bodyWidth = (centerX+30) - (centerX-30);
rect(centerX-30,100,bodyWidth,centerY);

fill(#FFFFFF);
// Alien Head
ellipse(centerX,100,150,150);

fill(#000000);
// Alien Eyes
// Left
ellipse(centerX-30,100,50,100);
// Right
ellipse(centerX+30,100,50,100);

// Alien Legs
// Left
line(centerX-30,100+240, centerX-70,100+240+75);
// Right
line(centerX+30,100+240,centerX+70,100+240+75);
