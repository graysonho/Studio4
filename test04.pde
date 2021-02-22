void setup() {
  size(800,800);
  smooth(4);
  background(#fefae0);
}

void draw() {
  strokeWeight(30);
  
  stroke(#264653);
  line(0,800,400,0);
  line(400,0,800,800);
  
  stroke(#2A9D8F);
  line(100,800,400,150);
  line(400,150,700,800);
  
  stroke(#E9C46A);
  line(200,800,400,300);
  line(400,300,600,800);
  
  stroke(#F4A261);
  line(300,800,400,450);
  line(400,450,500,800);
  
  stroke(#E76F51);
  line(375,800,400,650);
  line(400,650,425,800);
}
