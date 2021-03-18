float AX = 100;
float AY = 250;
float BX = 100;
float BY = 150;
float AXSpeed = 5;
float AYSpeed = 5;
float BXSpeed = 5;
float BYSpeed = 5;

void setup() {
  size(500, 500);
  background(64);
}

void draw() {
  
  ellipse(AX, AY, 50, 50);
  ellipse(BX, BY, 50, 50);
  AX += AXSpeed;
  AY += AYSpeed;
  BX += BXSpeed;
  BY += BYSpeed;


  if (AX < 0 || AX > width || AX==BX-50 || AX==BX+50) {
    AXSpeed *= -1;
  }

  if (AY < 0  || AY > height || AY==BY-50 || AY==BY+50) {
    AYSpeed *= -1;
  }

  if (BX < 0 || BX > width || BX==AX-50 || BX==AX+50) {
    BXSpeed *= -1;
  }

  if (BY < 0 || BY > height || BY==AY-50 || BY==AY+50) {
    BYSpeed *= -1;
  }
}
