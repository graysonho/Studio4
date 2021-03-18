float x1, y1, x2, y2, x3, y3,x4, y4;
//float a=100, b=100;
float c=150, d=150;
float e=150, f=150;
float g=150, h=150;
float i=150, j=150;
int angle;
int angle2;
float gx, gy, g1x, g2y;
float gxs=0.1, gys=0.1;
float gx1, gy1;
float gy1s=.1;
boolean rs = true; 
float  colr, colr2;
float vary, vary2;

void setup() {
  size(900, 900, P2D);
  background(0);
  frameRate(60);
}

void draw() {
  angle++;
  angle2++;
  noStroke();
  colr=noise(vary);
  colr=map(colr,0,1,0,255);
  vary=vary+0.01;
  fill(255,colr,39);
  translate(width/2, height/2);
  //x1 = a*cos((PI/180)*angle);
  //y1 = b*sin((PI/180)*angle);
  //ellipse(x1,y1,5,5); 

  x2 = c*cos((PI/180)*angle2)+gx;
  y2 = d*sin((PI/180)*angle2);
  ellipse(x2, y2, 10, 10);
  x3 = c*sin((PI/180)*angle2)+gx;
  y3 = d*cos((PI/180)*angle2);
  ellipse(x3, y3, 10, 10);
//  println(x2, y2);
  //gx=gx+gxs;
  d=d+gys;
  
  x1 = e*sin((PI/180)*angle);
  y1 = f*cos((PI/180)*angle)+gy;
  ellipse(x1, y1, 10, 10);
  
  x4 = e*cos((PI/180)*angle);
  y4 = f*sin((PI/180)*angle)+gy;
  ellipse(x4, y4, 10, 10);
  e=e+gxs;

  if (y2>400 || y2<-400) {
    gys=gys*-1;
  }
  
    if (x1>400 || x1<-400) {
    gxs=gxs*-1;
  }
  
    if(dist(x2,y2,0,0)<150){
        gys=gys*-1;
        d=150;
        angle2=0;
    }
  
  if(dist(x1,y1,0,0)<150){
        gxs=gxs*-1;
        e=150;
        angle=0;
  }
  
noFill();
stroke(255,colr,39,80);
line(x1, y1, x3, y3);
line(x2, y2, x4, y4);
  //translate(-width/2,-height/2);
  //fill(0,1);
  //rect(0,0,width,height);
}
