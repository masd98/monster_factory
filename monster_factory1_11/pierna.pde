class Pierna extends Extremidad {
  float inicio;
  boolean bool=false;
  PVector vec=new PVector(0, 0);
  float roat;
  PImage sprite;
  PImage spriteT;
  PImage sprite2;
  color sel;
  Pierna(float x, float y) {  
    super(x,y);
  }
  void display() {
    super.display();
    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
    rotate(-inicio);
    pushStyle();
    stroke(0, 255, 0);
    //line(0, 0, 55, 0);
    tint(sel); 
    image(sprite2, -5, -40, 60, 60);
    noTint();

    if (inicio>=11*PI/6) {
      bool=false;
      inicio=inicio-incr1;
    } else if (inicio>(4*PI)/3&&!bool) {
      inicio=inicio-incr1;
    } else if (inicio>(4*PI)/3&&bool) {
      inicio=inicio+incr1;
    } else if (inicio<=(4*PI)/3&&!bool) {
      inicio=inicio+incr1;
      bool=true;
    } 
    translate(55, 0);
    rotate(-inicio);
    imageMode(CENTER);
    image(sprite, 25, 0, 70, 70);
    tint(sel); 
    image(spriteT, 25, 0, 70, 70);
    popStyle(); 
    //line(0, 0, 55, 0);
    //popStyle();  

    resetMatrix();
  }



  void pos(PVector v, float r, float start, PImage i_brazo, PImage i_brazo2, PImage i_brazo3, color col) {
    sel =col;
    sprite=i_brazo;
    spriteT=i_brazo2;   
    sprite2=i_brazo3; 
    inicio =start;
    roat=r;
    vec.x=v.x;
    vec.y=v.y;
    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
    rotate(-inicio);
    pushStyle();
    stroke(255, 0, 0);
    //line(0, 0, 55, 0);
    tint(sel); 
    image(sprite2, 0, -40,  60, 60);
    noTint();

    translate(55, 0);
    rotate(-inicio);
    imageMode(CENTER);
    image(sprite, 25, 0, 70, 70);
    tint(sel); 
    image(spriteT, 25, 0, 70, 70);
    popStyle(); 
    //line(0, 0, 55, 0);
    //popStyle();  

    resetMatrix();
  }

  void pos() {
    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
    rotate(-inicio);
    pushStyle();
    stroke(255, 0, 0);
    //line(0, 0, 55, 0);
    tint(sel); 
    image(sprite2, -5, -40, 60, 60);
    noTint();

    translate(55, 0);
    rotate(-inicio);
    imageMode(CENTER);
    image(sprite, 25, 0, 70, 70);
    tint(sel); 
    image(spriteT, 25, 0, 70, 70);
    popStyle(); 
    //line(0, 0, 55, 0);
    //popStyle();  
    resetMatrix();
  }
}
