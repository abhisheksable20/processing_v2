//Drop[] drops;
ArrayList<Drop> al; 
int visibleDrops;
boolean stopRain;


void setup(){
  size(649,480);
  //drops = new Drop[300];
  al = new ArrayList();
  stopRain = false;
  visibleDrops = 0;
  
  //for(int i=0;i<drops.length;i++)
  //  drops[i] = new Drop();
    
}

void draw(){
  background(#121212);
  
  if(al.size() > 0){  
    for(int i=0;i<visibleDrops;i++){
      al.get(i).showDrop();
    }
  }

  if (!stopRain){
    al.add(new Drop());
    visibleDrops++;
  }
}

void mousePressed(){
  stopRain = !stopRain;
  //visibleDrops = 0;
  //al.clear();
}
