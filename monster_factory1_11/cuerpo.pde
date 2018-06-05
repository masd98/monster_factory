class Cuerpo {
  boolean unavez=true;
  float x=500;
  float y=random(0.2,2);

  int tcc, bcc, pcc, bcca, pcca, occ, bocc;
  Torso[] torsos;
  Brazo[] brazos;
  Pierna[] piernas;
  Brazo[] brazosA;
  Pierna[] piernasA;
  Ojos[] ojos;
  Boca[] bocas;

  PImage imagen1;
  PImage imagen2;
  PImage imagen3;
  Cuerpo () {
    torsos= new Torso[10];
    for (int i = 0; i < torsos.length; i++)
      torsos[i] =new Torso(x,y);

    brazos= new Brazo[10];
    piernas =new Pierna[10];
    brazosA= new Brazo[10];
    piernasA =new Pierna[10];
    ojos =new Ojos[10];
    bocas =new Boca[10];
    for (int i = 0; i < brazos.length; i++) {
      brazos[i] =new Brazo(x,y);
      piernas[i]=new Pierna(x,y);
      brazosA[i] =new Brazo(x,y);
      piernasA[i]=new Pierna(x,y);      
      ojos[i]=new Ojos(x,y);
      bocas[i]=new Boca(x,y);
    }
  }

  void pos(float y) {
    x=y;
    switch(tecla) {
    case 0:
      if (imgs>4)
        imgs=1;

      String vart1= new String("torsos/");
      String var1= new String(".png");   
      String cadena1=  vart1 + Integer.toString(imgs)+ var1;

      String vart2= new String("torsos/m");
      String cadena2=  vart2 + Integer.toString(imgs)+ var1;

      imagen1 = loadImage(cadena1);
      imagen2 = loadImage(cadena2);

      torsos[contador].pos(vector, i, imagen1, imagen2, col); 
      for (int i = 0; i < contador; i++) {
        torsos[i].pos();
      }
      tcc=contador;
      break;
    case 1://manos superficie
      var1= new String(".png"); 
      String varb1= new String("manos/");
      String varb2= new String("manos/m"); 
      String varb3= new String("manos/n"); 
      String cadenab1=  varb1 + Integer.toString(imgs)+ var1;
      String cadenab2=  varb2 + Integer.toString(imgs)+ var1;
      String cadenab3=  varb3 + Integer.toString(imgs)+ var1;

      imagen1 = loadImage(cadenab1);
      imagen2 = loadImage(cadenab2);
      imagen3 = loadImage(cadenab3);

      for (int i = 0; i < tcc; i++) {
        torsos[i].pos();
      }
      if (key=='1') {
        brazos[contador].pos(vector, i, 4, imagen1, imagen2, imagen3, col);
      } else if (key=='2') {
        brazos[contador].pos(vector, i, 5.7, imagen1, imagen2, imagen3, col);
      } else {
        brazos[contador].pos(vector, i, 4, imagen1, imagen2, imagen3, col);
      }
      for (int i = 0; i < contador; i++) {
        brazos[i].pos();
      }


      bcc=contador;
      break;
    case 2://manos inferior
      var1= new String(".png"); 
      varb1= new String("manos/");
      varb2= new String("manos/m"); 
      varb3= new String("manos/n"); 
      cadenab1=  varb1 + Integer.toString(imgs)+ var1;
      cadenab2=  varb2 + Integer.toString(imgs)+ var1;
      cadenab3=  varb3 + Integer.toString(imgs)+ var1;

      imagen1 = loadImage(cadenab1);
      imagen2 = loadImage(cadenab2);
      imagen3 = loadImage(cadenab3);

      if (key=='1') {
        brazosA[contador].pos(vector, i, 4, imagen1, imagen2, imagen3, col);
      } else if (key=='2') {
        brazosA[contador].pos(vector, i, 5.7, imagen1, imagen2, imagen3, col);
      } else {
        brazosA[contador].pos(vector, i, 4, imagen1, imagen2, imagen3, col);
      }
      for (int i = 0; i < contador; i++) {
        brazosA[i].pos();
      }
      for (int i = 0; i < tcc; i++) {
        torsos[i].pos();
      }
      for (int i = 0; i < bcc; i++) {
        brazos[i].pos();
      }
      bcca=contador;
      break;
    case 3://piernas superficie
      var1= new String(".png"); 
      varb1= new String("piernas/");
      varb2= new String("piernas/m"); 
      varb3= new String("piernas/n"); 
      cadenab1=  varb1 + Integer.toString(imgs)+ var1;
      cadenab2=  varb2 + Integer.toString(imgs)+ var1;
      cadenab3=  varb3 + Integer.toString(imgs)+ var1;

      imagen1= loadImage(cadenab1);
      imagen2 = loadImage(cadenab2);
      imagen3 = loadImage(cadenab3);


      for (int i = 0; i < bcca; i++) {
        brazosA[i].pos();
      }
      for (int i = 0; i < tcc; i++) {
        torsos[i].pos();
      }

      if (key=='1') {
        piernas[contador].pos(vector, i, (4*PI)/3, imagen1, imagen2, imagen3, col);
      } else if (key=='2') {
        piernas[contador].pos(vector, i, 11*PI/6, imagen1, imagen2, imagen3, col);
      } else {
        piernas[contador].pos(vector, i, (4*PI)/3, imagen1, imagen2, imagen3, col);
      }

      for (int i = 0; i < bcc; i++) {
        brazos[i].pos();
      }
      for (int i = 0; i < contador; i++) {
        piernas[i].pos();
      }
      pcc=contador;
      break;
    case 4://piernas inferior
      var1= new String(".png"); 
      varb1= new String("piernas/");
      varb2= new String("piernas/m"); 
      varb3= new String("piernas/n"); 
      cadenab1=  varb1 + Integer.toString(imgs)+ var1;
      cadenab2=  varb2 + Integer.toString(imgs)+ var1;
      cadenab3=  varb3 + Integer.toString(imgs)+ var1;

      imagen1= loadImage(cadenab1);
      imagen2 = loadImage(cadenab2);
      imagen3 = loadImage(cadenab3);


      if (key=='1') {
        piernasA[contador].pos(vector, i, (4*PI)/3, imagen1, imagen2, imagen3, col);
      } else if (key=='2') {
        piernasA[contador].pos(vector, i, 11*PI/6, imagen1, imagen2, imagen3, col);
      } else {
        piernasA[contador].pos(vector, i, (4*PI)/3, imagen1, imagen2, imagen3, col);
      }

      for (int i = 0; i < bcca; i++) {
        brazosA[i].pos();
      }
      for (int i = 0; i <contador; i++) {
        piernasA[i].pos();
      }
      for (int i = 0; i < tcc; i++) {
        torsos[i].pos();
      }
      for (int i = 0; i < bcc; i++) {
        brazos[i].pos();
      }
      for (int i = 0; i < pcc; i++) {
        piernas[i].pos();
      }
      pcca=contador;
      break;

    case 5://ojos
      var1= new String(".png"); 
      varb1= new String("ojos/");
      cadenab1=  varb1 + Integer.toString(imgs)+ var1;

      imagen1= loadImage(cadenab1);

      for (int i = 0; i < bcca; i++) {
        brazosA[i].pos();
      }
      for (int i = 0; i <pcca; i++) {
        piernasA[i].pos();
      }
      for (int i = 0; i < tcc; i++) {
        torsos[i].pos();
      }
      for (int i = 0; i < bcc; i++) {
        brazos[i].pos();
      }
      for (int i = 0; i < pcc; i++) {
        piernas[i].pos();
      }
      for (int i = 0; i < contador; i++) {
        ojos[i].pos();
      }
      ojos[contador].pos(vector, i, imagen1);
      occ=contador;
      break;


    case 6://boca
      var1= new String(".png"); 
      varb1= new String("bocas/");
      cadenab1=  varb1 + Integer.toString(imgs)+ var1;

      imagen1= loadImage(cadenab1);

      for (int i = 0; i < bcca; i++) {
        brazosA[i].pos();
      }
      for (int i = 0; i <pcca; i++) {
        piernasA[i].pos();
      }
      for (int i = 0; i < tcc; i++) {
        torsos[i].pos();
      }
      for (int i = 0; i < bcc; i++) {
        brazos[i].pos();
      }
      for (int i = 0; i < pcc; i++) {
        piernas[i].pos();
      }
      for (int i = 0; i < occ; i++) {
        ojos[i].pos();
      }
      for (int i = 0; i < contador; i++) {
        bocas[i].pos();
      }
      bocas[contador].pos(vector, i, imagen1);
      bocc=contador;
      break;

    default:
      for (int i = 0; i < bcca; i++) {
        brazosA[i].pos();
      }
      for (int i = 0; i <pcca; i++) {
        piernasA[i].pos();
      }
      for (int i = 0; i < tcc; i++) {
        torsos[i].pos();
      }
      for (int i = 0; i < bcc; i++) {
        brazos[i].pos();
      }
      for (int i = 0; i < pcc; i++) {
        piernas[i].pos();
      }
      for (int i = 0; i <occ; i++) {
        ojos[i].pos();
      }
      for (int i = 0; i <bocc; i++) {
        bocas[i].pos();
      }
      break;
    }
  }

  void display() { 
    println("t", tcc, "b", bcc, "p", pcc);
    for (int i = 0; i < bcca; i++) {
      brazosA[i].display();
    }
    for (int i = 0; i <pcca; i++) {
      piernasA[i].display();
    }
    for (int i = 0; i < tcc; i++) {
      torsos[i].display();
    }
    
    for (int i = 0; i < pcc; i++) {
      piernas[i].display();
    }
    for (int i = 0; i < occ; i++) {
      ojos[i].display();
    }
    for (int i = 0; i <bocc; i++) {
      bocas[i].display();
    }
    for (int i = 0; i < bcc; i++) {
      brazos[i].display();
    }
  }
}
