float x,y;
float vors;
float vors2;
float r=200;
float r2,r3;
float cons,colr;
float cons2,colr2;

void setup(){
  background (#000000);
  size (900,900,P2D);
  frameRate(30);
}

void draw(){
  colr=noise(cons);
  colr=map(colr,0,1,0,255);
  colr2=noise(cons2);
  colr2=map(colr2,0,1,255,0);
  cons=cons+0.2;
  cons2=cons2-0.2;
  stroke(colr,0,colr2);
  noFill();
  r2=200+vors;
  r3=200+vors;
  vors2=vors2+18;
  vors=vors+30;
  ellipse(width/2+r/6+vors2,height/2,r2,r3);
  ellipse(width/2-r/6-vors2,height/2,r2,r3);
  fill(#000000);
  stroke(#ffffff);
  strokeWeight(4);
  ellipse(width/2,height/2,r,r);
  
  if(r2>width/2-50){
    vors=0;
    vors2=0;
  }
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
}
