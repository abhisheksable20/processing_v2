public class Triangle{
  float centerX, centerY;
  
  public Triangle(float defaultCenterX,float defaultCenterY){
      this.centerX = defaultCenterX;
      this.centerY = defaultCenterY;
  }
  
  // Show triangle
  public void display(){
    beginShape(TRIANGLES);
    vertex(centerX,centerY-50);
    vertex(centerX+50,centerY+50);
    vertex(centerX-50,centerY+50);
    endShape();
  }
  
  // Change triangle position
  public void changePosition(float centerX, float centerY){
     this.centerX = centerX;
     this.centerY = centerY;
  }
  
  public void changeColor(color rgb){
    fill(rgb);
  }
  
}
