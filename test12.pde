float x;
float y;
float s=0;
float grow;
float t = 0;


void setup() {
  size (800,800);
  background (#000000);
}

void draw() {
float colr = noise(t);
colr = map(colr,0,1,0,255);
grow=4;
s=s+grow;
x=random(width/2-20,width/2+20);
y=random(height/2-20,height/2+20);
noFill();
stroke(colr);
strokeWeight(2);
circle (x,y,s);

t=t+0.05;

if(s>=width || s>=height){
 background(#000000);
 s=0;
}
saveFrame("test12.2_######.jpeg");
}
