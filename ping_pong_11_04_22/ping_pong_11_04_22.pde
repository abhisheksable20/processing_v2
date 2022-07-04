// ping dimension
float rectHeight = 80;
float rectWidth = 20;

// speed of pong
float xSpeed = random(2,3);
float ySpeed = random(2,3);

// Pong initialization
float posX = 30;
float posY = random(0,600);

void setup(){
  size(700,600);
  noStroke();
}

void draw(){
  background(#000000);
  float mouseCurrY = mouseY;
  rect(0,mouseCurrY,rectWidth,rectHeight);
  ellipse(posX,posY,20,20);
  
  if (posX <= rectWidth && posY >= mouseCurrY && posY <= mouseCurrY+rectHeight)
    xSpeed *= -1;
  
  if (posY >= height || posY <= 0)
    ySpeed *= -1;
  
  if (posX >= width)
    xSpeed *= -1;
  
  posX += xSpeed;
  posY += ySpeed; 
  
  // Crash the game if not touched
  if (posX <= 0)
    exit();
  
}
