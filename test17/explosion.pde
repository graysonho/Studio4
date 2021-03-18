class explosion {
  
  float x;
  float y;
  float atcspeedx;
  float atcspeedy;
  float diameter;


   explosion(float numb){
   x = 0;
   y = 0;
   diameter = numb;
   }
   
   void atkbou() {
   x=x+random(-100,100);
   y=y+random(-100,100);
   }

    void display() {
    noStroke();
    fill(#ffffff);
    ellipse(x,y,diameter,diameter);
    }
}
