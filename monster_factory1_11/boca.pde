
class Boca extends Extremidad {
  PVector vec=new PVector(0, 0);
  float roat=0;
  int y=0;
  boolean unavez=true;
  PImage sprite;
  PImage spriteT;
  color sel;

  Boca(float x,float y) {  
    super(x,y);
  }

  void display() {
    super.display();
    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
     pushStyle();
    imageMode(CENTER);
    image(sprite, 0, 0, 40, 40);
    popStyle();
    resetMatrix();
  }

  void pos(PVector v, float r, PImage i_torso) {
    sel =col;
    sprite=i_torso;
    roat=r;
    vec.x=v.x;
    vec.y=v.y;
    //println(vec.x);

    pushStyle();
    stroke(255, 0, 0);
    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
    //line(0, 0, -25, 100);
    imageMode(CENTER);
    image(sprite,0, 0, 40,40);
    
    //println(vec.x, vec.y);

    popStyle();  
    resetMatrix();
  }
  void pos() {
    pushStyle();
    stroke(255, 0, 0);
    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
    //line(0, 0, -25, 100);
    imageMode(CENTER);
    image(sprite, 0, 0, 40, 40);
      
    popStyle();  
    resetMatrix();
  }
}
