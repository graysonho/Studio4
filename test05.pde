float circleAX;
float circleAY;
float circleBX;
float circleBY;

void setup(){
  size(500,500);
  circleAX=width/2;
  circleAY=height/2;
  circleBX=width/2;
  circleBY=height/2;
}

void draw(){
  background(#000000);
  ellipse (circleAX,circleAY,20,20);
  ellipse (circleBX,circleBY,20,20);
  circleAX = circleAX + random(-10,10);
  circleAY = circleAY - random(-10,10);  
  circleBX = circleBX + random(-10,10);
  circleBY = circleBY + random(-10,10);
}
