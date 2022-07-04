Circle c1;
Circle c2;

void setup(){
  size(800, 600);
  c1 = new Circle(1, 150, 30);
  c2 = new Circle(1, 100, 50);
}


void draw(){
  background(0);
  
  c2.show();
  c1.show();
}
