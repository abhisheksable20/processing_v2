ArrayList<Rain> list;

PImage img;

void setup(){
  size(800, 600);
  img = loadImage("hill.jpg");
  list = new ArrayList();
}

void draw(){
  background(0);
  image(img, 0, 0, width, height);
  fill(0, 100);
  noStroke();
  rect(0, 0, width, height);
  
  Rain r = new Rain();
  list.add(r);
  
  for(Rain rns : list){
    rns.display();
    rns.move();
    rns.edge();
  }
  
}
