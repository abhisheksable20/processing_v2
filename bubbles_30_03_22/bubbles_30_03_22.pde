Bubble[] bubbles = new Bubble[100];

ArrayList<Bubble> al;

int totalBubbles = 0;
void setup(){
  size(640,480);
  al = new ArrayList();
  
  //for(int i=0;i<bubbles.length;i++){
  //  bubbles[i] = new Bubble(random(50));
  //}
}

void draw(){
  background(#121212);
  //for(int i=0;i<totalBubbles;i++){
  //  bubbles[i].display();
  //  bubbles[i].ascend();
  //  bubbles[i].top();
  //}
  
  for(int i=0;i<al.size();i++){
    al.get(i).display();
    al.get(i).ascend();
    al.get(i).top();
  }
}

void mousePressed(){
  if(totalBubbles < bubbles.length){
    al.add(new Bubble(mouseX,random(50)));
  }    
}

void keyPressed(){
  al.get(int(random(al.size()-1))).changeColor();
}
