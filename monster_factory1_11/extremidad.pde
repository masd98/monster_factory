abstract class Extremidad {
  float inicial=500;
  float velocidad;

  Extremidad(float x,float y) {
    inicial=x;
    velocidad =y;
  }
  
  void display(){
     if (inicial<1500) {
      inicial=inicial+velocidad;
    }
    if (inicial>=1500) {
      inicial=0;
    } 
  }
}
