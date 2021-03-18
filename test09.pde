float AX = 100;
float AY = 250;
float BX = 100;
float BY = 150;
float AXSpeed = 5;
float AYSpeed = 4;
float BXSpeed = -5;
float BYSpeed = -4;

void setup() {
  size(800, 800);
  background(64);
  
}

void draw() {
  
  ellipse(AX, AY, 50, 50);
  fill (random(1,255), random(200,250), 255);
  ellipse(BX, BY, 50, 50);
  fill (random(1,255), random(200,250), 255);
  AX = AX+AXSpeed;
  AY = AY+AYSpeed;
  BX = BX+BXSpeed;
  BY = BY+BYSpeed;

  if (AX < 0 || AX > width) {
    AXSpeed *= -1;
  }

  if (AY < 0  || AY > height) {
    AYSpeed *= -1;
  }

  if (BX < 0 || BX > width) {
    BXSpeed *= -1;
  }

  if (BY < 0 || BY > height) {
    BYSpeed *= -1;
  }
  if (dist(AX,AY,BX,BY)<20){
    AXSpeed *= -1;
    AYSpeed *= -1;
    BXSpeed *= -1;
    BYSpeed *= -1;
  }
}

void mousePressed() {
  saveFrame("test09_####.png");
}
