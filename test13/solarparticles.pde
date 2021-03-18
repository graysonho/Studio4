class solarpart {
  
  float x;
  float y;
  float atcspeedx=1;
  float atcspeedy=random(-0.5,0.5);
  float diameter;
  
  solarpart(float size){
    x = random(-100,width/2);
    y = random(300,400);
    diameter = size;
  }
  
  void atkbou() {
    x=x+atcspeedx;
    y=y+atcspeedy;
    
    if(dist(x+5,y,width,height/2)<height/2){
      atcspeedx=-1;
    }
   
      
    if(x<-100 || y<0 || y>height){
      atcspeedx*=-1;
      x= random(-100,-200);
      y= random(300,400);
    }
  }
  
  void display() {
    noFill();
    strokeWeight(4);
    stroke(255);
    ellipse(width,height/2,width,height);
    noStroke();
    fill(255);
    ellipse(x,y,diameter,diameter);
  }
}
