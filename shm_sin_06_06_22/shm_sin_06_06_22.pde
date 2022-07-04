float amp;
float period = 50;
float startTime = 0;
float timeVel = 1;

void setup(){
  size(800, 600);
  amp = height/2;
  
}

void draw(){
  background(0);
  noStroke();
  
  startTime += 0.5;
  float time = startTime;
  
  for (int x = 0; x <= width; x += 24){
    float y = map(amp * sin((time/period) * TWO_PI), amp * -1, amp, 0, height);
    fill(255, 200);
    ellipse(x, y, 40, 40);
    time += timeVel;
  }
  
}
