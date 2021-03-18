float AX = 100;
float AY = 250;
float BX = 100;
float BY = 150;
float CX = 50;
float CY = 100;
float DX = 200;
float DY = 70;
float EX = 150;
float EY = 300;
float AXSpeed = random(-10, 10);
float AYSpeed = random(-10, 10);
float BXSpeed = random(-10, 10);
float BYSpeed = random(-10, 10);
float CXSpeed = random(-10, 10);
float CYSpeed = random(-10, 10);
float DXSpeed = random(-10, 10);
float DYSpeed = random(-10, 10);
float EXSpeed = random(-10, 10);
float EYSpeed = random(-10, 10);

void setup() {
  size(500, 500);
  background(#000000);
}

void draw() {
  stroke (#ffffff);
  strokeWeight(4);
  noFill();
  ellipse(AX, AY, 50, 50);
  ellipse(BX, BY, 50, 50);
  ellipse(CX, CY, 50, 50);
  ellipse(DX, DY, 50, 50);
  ellipse(EX, EY, 50, 50);

  stroke (#FF030B);
  strokeWeight(4);
  noFill();
  ellipse (width/2, height/2, 100, 100);

  AX = AX+AXSpeed;
  AY = AY+AYSpeed;
  BX = BX+BXSpeed;
  BY = BY+BYSpeed;
  CX = CX+CXSpeed;
  CY = CY+CYSpeed;
  DX = DX+DXSpeed;
  DY = DY+DYSpeed;
  EX = EX+EXSpeed;
  EY = EY+EYSpeed;

  if (AX < 0 || AX >= width) {
    AXSpeed *= -1;
  }

  if (AY < 0  || AY >= height) {
    AYSpeed *= -1;
  }

  if (BX < 0 || BX >= width) {
    BXSpeed *= -1;
  }

  if (BY < 0 || BY >= height) {
    BYSpeed *= -1;
  }

  if (CX < 0 || CX >= width) {
    CXSpeed *= -1;
  }

  if (CY < 0 || CY >= height) {
    CYSpeed *= -1;
  }

  if (DX < 0 || DX >= width) {
    DXSpeed *= -1;
  }

  if (DY < 0 || DY >= height) {
    DYSpeed *= -1;
  }

  if (EX < 0 || EX >= width) {
    EXSpeed *= -1;
  }

  if (EY < 0 || EY >= height) {
    EYSpeed *= -1;
  }

  if (dist(AX, AY, BX, BY)<=50) {
    AXSpeed *= -1;
    AYSpeed *= -1;
    BXSpeed *= -1;
    BYSpeed *= -1;
  }

  if (dist(AX, AY, CX, CY)<=50) {
    AXSpeed *= -1;
    AYSpeed *= -1;
    CXSpeed *= -1;
    CYSpeed *= -1;
  }
  if (dist(BX, BY, CX, CY)<=50) {
    BXSpeed *= -1;
    BYSpeed *= -1;
    CXSpeed *= -1;
    CYSpeed *= -1;
  }
  if (dist(AX, AY, DX, DY)<=50) {
    AXSpeed *= -1;
    AYSpeed *= -1;
    DXSpeed *= -1;
    DYSpeed *= -1;
  }
  if (dist(BX, BY, DX, DY)<=50) {
    BXSpeed *= -1;
    BYSpeed *= -1;
    DXSpeed *= -1;
    DYSpeed *= -1;
  }
  if (dist(CX, CY, DX, DY)<=50) {
    CXSpeed *= -1;
    CYSpeed *= -1;
    DXSpeed *= -1;
    DYSpeed *= -1;
  }
  if (dist(AX, AY, EX, EY)<=50) {
    AXSpeed *= -1;
    AYSpeed *= -1;
    EXSpeed *= -1;
    EYSpeed *= -1;
  }
  if (dist(BX, BY, EX, EY)<=50) {
    BXSpeed *= -1;
    BYSpeed *= -1;
    EXSpeed *= -1;
    EYSpeed *= -1;
  }
  if (dist(CX, CY, EX, EY)<=50) {
    CXSpeed *= -1;
    CYSpeed *= -1;
    EXSpeed *= -1;
    EYSpeed *= -1;
  }
  if (dist(DX, DY, EX, EY)<=50) {
    DXSpeed *= -1;
    DYSpeed *= -1;
    EXSpeed *= -1;
    EYSpeed *= -1;
  }

  fill(1, 20);
  noStroke();
  rect(0, 0, 500, 500);
}

void mousePressed() {
  if (mouseButton == LEFT) {
    AXSpeed = random(-10, 10);
    AYSpeed = random(-10, 10);
    BXSpeed = random(-10, 10);
    BYSpeed = random(-10, 10);
    CXSpeed = random(-10, 10);
    CYSpeed = random(-10, 10);
    DXSpeed = random(-10, 10);
    DYSpeed = random(-10, 10);
    EXSpeed = random(-10, 10);
    EYSpeed = random(-10, 10);
  }
}
