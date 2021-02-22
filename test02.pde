void setup() {
  size(800,800);
  smooth(10);
  background(#011638);
}

void draw() {
  stroke(#ffffff);
  strokeWeight(10);
  
  line(0,0,100,800);
  line(0,100,200,800);
  
  line(0,200,300,800);
  line(0,300,400,800);
  
  line(0,400,500,800);
  line(0,500,600,800);
  
  line(0,600,700,800);
  line(0,700,800,800);
  
  line(0,0,800,100);
  line(100,0,800,200);
  
  line(200,0,800,300);
  line(300,0,800,400);
  
  line(400,0,800,500);
  line(500,0,800,600);
  
  line(600,0,800,700);
  line(700,0,800,800);
  
  save("test02.1.jpg");
  
}
