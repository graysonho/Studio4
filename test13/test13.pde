solarpart[] solarparts = new solarpart[200];

void setup(){
  size(800,800,P3D);
  background(0);
  for(int i=0; i<solarparts.length;i++){
    solarparts[i] = new solarpart(10);
  }
}

void draw(){
 noStroke();
 fill(0,20);
 rect(0,0,width,height);
 for(int i=0; i<solarparts.length;i++){
 solarparts[i].display();
 solarparts[i].atkbou();
 }
  saveFrame("test13_######.jpeg");
}
