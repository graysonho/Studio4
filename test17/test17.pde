explosion[] explosion = new explosion[100];
float x1,y1,x2,y2;
float a=300,b=300;
float c=-300,d=-300;
float sx1, sy1, sx2, sy2;
float sxs=0.1, sys=0.1;
float angle;

void setup(){
  background(#000000);
  size(900,900,P2D);
  frameRate(60);
  for(int i=0; i<explosion.length;i++){
  explosion[i] = new explosion(20);
}
}

void draw() {
  translate(width/2, height/2);
  angle++;
  noStroke();
  fill(#ffffff);
  x1 = a*sin((PI/180)*angle)+sx1;
  y1 = b*cos((PI/180)*angle);
  ellipse(x1,y1,50,50);
  a=a-sxs;
  b=b-sxs;
  fill(#ffffff);
  x2 = c*sin((PI/180)*angle)+sx1;
  y2 = d*cos((PI/180)*angle);
  ellipse(x2,y2,50,50);
  c=c+sys;
  d=d+sys;
  stroke(255,80);
  strokeWeight(4);
  line(x1, y1, x2, y2);
  noFill();
  noStroke();
  fill(0,20);
  rect(-width/2,-height/2,width,height);
  
  if(dist(x1,y1,x2,y2)<=50){
  background(#000000);
  a=0;
  b=0;
  c=0;
  d=0;
  for(int i=0; i<explosion.length;i++){
  explosion[i].display();
  explosion[i].atkbou();
  fill(0,20);
  rect(-width/2,-height/2,width,height);
  }
  }
}
