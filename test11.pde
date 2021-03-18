float TRX = 400;
float TLX = 400;
float LRX = 400;
float LLX = 400;
float TRXSpeed = 10;
float TLXSpeed = 10;
float LRXSpeed = 10;
float LLXSpeed = 10;

void setup() {
  size(800, 800);
  background(#000000);
  frameRate(60);
}

void draw() {
  line (width/2, 0, TRX, height/2);
  line (width/2, 0, TLX, height/2);
  line (width/2, 800, LRX, height/2);
  line (width/2, 800, LLX, height/2);
  stroke (#ffffff);
  strokeWeight(3);
  TRX = TRX+TRXSpeed;
  TLX = TLX-TLXSpeed;
  LRX = LRX+LRXSpeed;
  LLX = LLX-LLXSpeed;
  
if (TRX >width) {
  TRX = 400;
}

if (TLX < 0) {
  TLX = 400;
}

if (LRX >width) {
  LRX = 400;
}

if (LLX <0) {
  LLX = 400;
}
  fill (0, 10);
  rect(0, 0, width, height);
 // saveFrame("test11_#####.png");
}
